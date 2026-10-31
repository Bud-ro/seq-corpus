"""
InstrumentStudio Screenshot Utility

Captures the InstrumentStudio window content using Windows GDI APIs.
Works even when the window is hidden/minimized/behind other windows.
Automatically removes black borders and saves clean content.

Features:
  - Captures window using PrintWindow (renders actual window content)
  - Works across multiple monitors automatically
  - Auto-crops black borders
  - Supports PNG, JPG, BMP, GIF formats
  - Minimal dependencies (ctypes, PIL/Pillow)
"""

import ctypes
from ctypes import wintypes
from PIL import Image
import os
import time
from datetime import datetime

user32 = ctypes.windll.user32
gdi32 = ctypes.windll.gdi32

# ============================================================================
# Windows API Constants
# ============================================================================
PW_RENDERFULLCONTENT = 0x00000002  # PrintWindow flag for full rendering
SRCCOPY = 0x00CC0020               # BitBlt raster operation code
BLACK_THRESHOLD = 10               # Brightness threshold for black detection
WINDOW_RESTORE_DELAY = 0.3         # Delay after restoring minimized window (seconds)

# Supported image file formats
SUPPORTED_FORMATS = ('.png', '.jpg', '.jpeg', '.bmp', '.gif')


# ============================================================================
# Windows Structures
# ============================================================================
class RECT(ctypes.Structure):
    """Windows RECT structure for window coordinates"""
    _fields_ = [
        ("left", wintypes.LONG),
        ("top", wintypes.LONG),
        ("right", wintypes.LONG),
        ("bottom", wintypes.LONG),
    ]


class BITMAPINFOHEADER(ctypes.Structure):
    """Windows BITMAPINFOHEADER structure for bitmap information"""
    _fields_ = [
        ('biSize', wintypes.DWORD),
        ('biWidth', wintypes.LONG),
        ('biHeight', wintypes.LONG),
        ('biPlanes', wintypes.WORD),
        ('biBitCount', wintypes.WORD),
        ('biCompression', wintypes.DWORD),
        ('biSizeImage', wintypes.DWORD),
        ('biXPelsPerMeter', wintypes.LONG),
        ('biYPelsPerMeter', wintypes.LONG),
        ('biClrUsed', wintypes.DWORD),
        ('biClrImportant', wintypes.DWORD),
    ]


# ============================================================================
# DPI Awareness Initialization
# ============================================================================
try:
    user32.SetProcessDPIAware()
except Exception:
    pass  # Not critical if DPI awareness fails


# ============================================================================
# Window Finding Functions
# ============================================================================
def _enum_windows_helper(match_func):
    """
    Helper to enumerate all visible windows.
    
    Args:
        match_func: Callable that takes window title (str) and returns bool
        
    Returns:
        List[int] - Window handles matching the function
    """
    results = []

    def enum_callback(hwnd, lParam):
        if user32.IsWindowVisible(hwnd):
            length = user32.GetWindowTextLengthW(hwnd)
            if length > 0:
                buff = ctypes.create_unicode_buffer(length + 1)
                user32.GetWindowTextW(hwnd, buff, length + 1)
                if match_func(buff.value):
                    results.append((hwnd, buff.value))
        return True

    EnumWindowsProc = ctypes.WINFUNCTYPE(ctypes.c_bool, wintypes.HWND, wintypes.LPARAM)
    user32.EnumWindows(EnumWindowsProc(enum_callback), 0)
    return results


def list_all_windows():
    """
    Get list of all visible window titles.
    
    Returns:
        List[str] - Window titles (max 50 for readability)
    """
    windows = _enum_windows_helper(lambda t: True)
    return [title for _, title in windows[:50]]


def find_window_by_title(title_substring):
    """
    Find window handle by partial title match (case-insensitive).
    
    Args:
        title_substring (str) - Substring to search for in window titles
        
    Returns:
        int or None - Window handle if found, None otherwise
    """
    results = _enum_windows_helper(
        lambda t: title_substring.lower() in t.lower()
    )
    return results[0][0] if results else None


# ============================================================================
# Window Geometry Functions
# ============================================================================
def get_window_rect(hwnd):
    """
    Get window's bounding rectangle in screen coordinates.
    
    Args:
        hwnd (int) - Window handle
        
    Returns:
        RECT - Window rectangle (includes decorations and borders)
    """
    rect = RECT()
    user32.GetWindowRect(hwnd, ctypes.byref(rect))
    return rect


# ============================================================================
# Image Processing Functions
# ============================================================================
def auto_crop_black_borders(image, threshold=BLACK_THRESHOLD):
    """
    Remove black borders from image by detecting non-black content bounds.
    
    Uses a quick sampling to detect if cropping is needed, then finds exact
    boundaries. Much faster than pixel-by-pixel on large images.
    
    Args:
        image (PIL.Image) - Image to crop
        threshold (int) - Brightness level to consider black (0-255)
        
    Returns:
        PIL.Image - Cropped image, or original if no borders detected
    """
    gray = image.convert('L')
    pixels = gray.load()
    w, h = image.width, image.height
    
    # Quick check: sample pixels to see if cropping needed
    sample_size = max(1, min(w, h) // 10)
    sample_pixels = [
        pixels[x, y] 
        for x in range(0, w, sample_size)
        for y in range(0, h, sample_size)
    ]
    
    # If >70% are non-black, likely no borders
    black_ratio = sum(1 for p in sample_pixels if p < threshold) / len(sample_pixels)
    if black_ratio < 0.3:
        return image
    
    # Find exact non-black boundaries
    left = next((x for x in range(w) 
                 if any(pixels[x, y] >= threshold for y in range(h))), 0)
    
    top = next((y for y in range(h) 
                if any(pixels[x, y] >= threshold for x in range(w))), 0)
    
    right = next((x + 1 for x in range(w - 1, -1, -1) 
                  if any(pixels[x, y] >= threshold for y in range(h))), w)
    
    bottom = next((y + 1 for y in range(h - 1, -1, -1) 
                   if any(pixels[x, y] >= threshold for x in range(w))), h)
    
    # Return cropped image if borders found
    if left > 0 or top > 0 or right < w or bottom < h:
        return image.crop((left, top, right, bottom))
    
    return image


def _create_bitmap_info(width, height):
    """Create and initialize BITMAPINFOHEADER structure."""
    bmi = BITMAPINFOHEADER()
    bmi.biSize = ctypes.sizeof(BITMAPINFOHEADER)
    bmi.biWidth = width
    bmi.biHeight = -height  # Negative = top-down bitmap
    bmi.biPlanes = 1
    bmi.biBitCount = 32
    bmi.biCompression = 0  # BI_RGB
    return bmi


# ============================================================================
# Main Capture Function
# ============================================================================
def capture_instrument_studio(output_dir, base_filename, add_timestamp=True):
    """
    Capture InstrumentStudio window screenshot.
    
    Captures the window's actual rendered content using Windows GDI PrintWindow,
    which works even if the window is hidden/minimized/behind other windows.
    Automatically detects and removes black borders.
    
    Args:
        output_dir (str) - Directory to save the screenshot
        base_filename (str) - Base filename including extension (e.g. 'screenshot.png')
        add_timestamp (bool) - If True, append a timestamp to the filename before the extension
        
    Returns:
        Tuple[bool, str] - (Success flag, Status message)
        
    Example:
        success, msg = capture_instrument_studio('C:\\Temp\\screenshot.png')
        print(msg)
    """
    
    # Find InstrumentStudio window
    hwnd = find_window_by_title("InstrumentStudio")
    
    if not hwnd:
        return False, "Instrument Studio window not open. Please open the application and try again"
    
    # Restore if minimized
    if user32.IsIconic(hwnd):
        print("⚠️  Window is minimized, restoring...")
        user32.ShowWindow(hwnd, 9)  # SW_RESTORE
        time.sleep(WINDOW_RESTORE_DELAY)
    
    # Get window dimensions
    rect = get_window_rect(hwnd)
    width = rect.right - rect.left
    height = rect.bottom - rect.top
    
    if width <= 0 or height <= 0:
        return False, f"Invalid window dimensions: {width}x{height}"
    
    print(f"Capturing window ({width}x{height})...")
    
    # Set up GDI resources
    hwndDC = None
    memDC = None
    bitmap = None
    
    try:
        # Get device context
        hwndDC = user32.GetWindowDC(hwnd)
        if not hwndDC:
            return False, "Failed to get window DC"

        # Create compatible DC and bitmap
        memDC = gdi32.CreateCompatibleDC(hwndDC)
        if not memDC:
            return False, "Failed to create compatible DC"
            
        bitmap = gdi32.CreateCompatibleBitmap(hwndDC, width, height)
        if not bitmap:
            return False, "Failed to create compatible bitmap"
        
        gdi32.SelectObject(memDC, bitmap)

        # Capture window content
        result = user32.PrintWindow(hwnd, memDC, PW_RENDERFULLCONTENT)
        if not result:
            # Fallback to BitBlt
            result = gdi32.BitBlt(memDC, 0, 0, width, height, hwndDC, 0, 0, SRCCOPY)
            if not result:
                return False, "PrintWindow and BitBlt both failed"

        # Get bitmap bits
        bmi = _create_bitmap_info(width, height)
        buffer = ctypes.create_string_buffer(width * height * 4)
        bits = gdi32.GetDIBits(memDC, bitmap, 0, height, buffer, ctypes.byref(bmi), 0)

        if not bits:
            return False, "GetDIBits failed"

        # Convert to PIL image and auto-crop
        image = Image.frombuffer('RGB', (width, height), buffer, 'raw', 'BGRX', 0, 1)
        image = auto_crop_black_borders(image)
        
        # Build output path from directory + base filename
        if not base_filename:
            return False, "Base filename is required"

        os.makedirs(output_dir, exist_ok=True) if output_dir else None

        base, ext = os.path.splitext(base_filename)
        if not ext:
            return False, "Base filename must include an extension (e.g. '.png')"
        ext = ext.lower()

        timestamp = datetime.now().strftime("%d%b%Y_%H%M%S") if add_timestamp else ''
        filename = f"{base}_{timestamp}{ext}" if timestamp else f"{base}{ext}"
        output_file = os.path.join(output_dir, filename) if output_dir else filename

        # Validate and save
        ext = os.path.splitext(output_file)[1].lower()
        if ext not in SUPPORTED_FORMATS:
            return False, f"Unsupported format: {ext} (use {', '.join(SUPPORTED_FORMATS)})"
        
        directory = os.path.dirname(output_file)
        if directory:
            os.makedirs(directory, exist_ok=True)
        
        image.save(output_file)
        msg = f"✓ Saved {image.width}x{image.height} to: {output_file}"
        print(msg)
        
        return True, "Screenshot captured successfully"
        
    except Exception as e:
        return False, f"Capture failed: {str(e)}"
    
    finally:
        # Cleanup GDI resources
        if bitmap:
            gdi32.DeleteObject(bitmap)
        if memDC:
            gdi32.DeleteDC(memDC)
        if hwndDC:
            user32.ReleaseDC(hwnd, hwndDC)
