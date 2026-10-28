from screenshot_utility import capture_instrument_studio

# Specify folder and base filename (including extension)
output_folder = r"C:\Temp"
base_filename = "InstrStudio_screenshot.png"

# Capture (timestamp will be appended by default)
success, message = capture_instrument_studio(output_folder, base_filename)

if success:
    print(f"\n✅ {message}")
else:
    print(f"\n❌ {message}")
