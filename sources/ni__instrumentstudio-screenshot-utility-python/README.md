# InstrumentStudio Screenshot Utility (Python)

## Overview

The InstrumentStudio Screenshot Utility captures the rendered content of an active **NI InstrumentStudio** window using Windows GDI APIs.

It uses the Windows `PrintWindow` API to capture the actual rendered window content — even if the window is:

- Minimized  
- Behind other windows  

The utility automatically removes black borders and saves a clean image file.

It is intended for automated validation and reporting workflows where visual documentation of instrument configuration or measurement results is required.

It can be invoked from:

- Python scripts  
- NI TestStand  
- LabVIEW (via Python Node)  
- Any application capable of running Python  

---

## Features

- Uses Windows `PrintWindow` (with fallback to `BitBlt`)
- Works with minimized or background windows
- Automatically removes black borders
- Supports multiple image formats
- Automatically creates output directories
- Optional timestamp appended to filename
- Minimal dependencies (`ctypes`, `Pillow`)

---

## System Requirements

- Windows operating system  
- NI InstrumentStudio installed  
- Python 3.8 or later  
- Pillow library  

Install dependency:

```bash
pip install pillow
```

---

## Prerequisites

Before running the utility:

- InstrumentStudio must already be launched  
- Required Soft Front Panel (SFP) must be open  
- The SFP must be fully loaded and stable  
- InstrumentStudio must not be starting up or shutting down  

> **Note:**  
> The utility does not launch InstrumentStudio or configure instruments.  
> It captures the current visual state of an already running session.

---

# Function API

```python
capture_instrument_studio(output_dir, base_filename, add_timestamp=True)
```

## Parameters

| Parameter       | Type  | Description |
|-----------------|-------|-------------|
| `output_dir`    | str   | Directory where the screenshot will be saved |
| `base_filename` | str   | Base filename including extension (e.g., `image.png`) |
| `add_timestamp` | bool  | If `True`, appends timestamp before extension |

## Returns

```python
(success: bool, message: str)
```

- `success` → `True` if capture succeeded  
- `message` → Status or error description  

---

# Basic Usage (Python)

## Example Script (`example.py`)

```python
from screenshot_utility import capture_instrument_studio

# Specify folder and base filename (including extension)
output_folder = r"C:\Temp"
base_filename = "InstrStudio_screenshot.png"

# Capture (timestamp appended by default)
success, message = capture_instrument_studio(output_folder, base_filename)

if success:
    print(f"\n✅ {message}")
else:
    print(f"\n❌ {message}")
```

## Run

```bash
python example.py
```

Example output file:

```
C:\Temp\InstrStudio_screenshot_03Mar2026_184530.png
```

---

# Timestamp Behavior

If `add_timestamp=True` (default):

```
InstrStudio_screenshot_03Mar2026_184530.png
```

If `add_timestamp=False`:

```
InstrStudio_screenshot.png
```

---

# Supported Output Formats

The file extension determines image format.

Supported formats:

- `.png`
- `.jpg`
- `.jpeg`
- `.bmp`
- `.gif`

If an unsupported format is provided, the function returns an error.

---

# Automatic Directory Creation

- If `output_dir` does not exist, it is automatically created.
- Nested folders are supported.

Example:

```python
output_folder = r"C:\Reports\Run1\Screenshots"
```

The full folder structure will be created automatically.

---

# Running from NI TestStand

The utility can be integrated with NI TestStand using either System Exec or Python Adapter.

---

## Option 1 – System Exec Step

1. Insert a **System Exec** step.
2. Configure:

**Executable**
```
python
```

**Arguments**
```
"C:\Path\example.py"
```

Ensure:
- Python is in system PATH  
- Pillow is installed in that Python environment  

---

## Option 2 – Python Adapter (Recommended)

### Configure Python Adapter

1. Navigate to:
```
Configure → Adapters → Python
```
2. Select the correct Python environment.

### Add Python Action Step

1. Insert **Python Action** step  
2. Select:
   - Module: `screenshot_utility`
   - Function: `capture_instrument_studio`

3. Provide parameters:

```
output_dir: "C:\\Temp"
base_filename: "TS_Screenshot.png"
add_timestamp: True
```

### Return Values

The function returns:

```
(success: bool, message: str)
```

You may:
- Use `success` to determine pass/fail behavior  
- Log `message` into TestStand results  

---

# How It Works (Internally)

The utility performs:

1. Enumerates visible Windows  
2. Finds InstrumentStudio by partial title match  
3. Restores window if minimized  
4. Retrieves window dimensions  
5. Captures content using `PrintWindow`  
6. Falls back to `BitBlt` if necessary  
7. Extracts bitmap using `GetDIBits`  
8. Converts to PIL Image  
9. Automatically removes black borders  
10. Saves image to disk  

---

# Known Limitations

- Works only on Windows  
- Window must exist in active user session  
- Hardware-accelerated UI elements may render differently  
- In multi-monitor systems, consistent DPI scaling is recommended  
- Window title must contain `"InstrumentStudio"`  

---

# Typical Automation Workflow

1. Launch NI InstrumentStudio  
2. Open required Soft Front Panels  
3. Configure instrument settings  
4. Execute measurement  
5. Invoke screenshot utility  
6. Archive image for validation or reporting  

---

# Example Project Structure

```
project/
│
├── screenshot_utility.py
├── example.py
└── README.md
```

---

# Author / Team

Add team or ownership details here.
