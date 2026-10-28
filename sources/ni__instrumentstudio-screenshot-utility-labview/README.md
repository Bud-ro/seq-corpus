# InstrumentStudio Screenshot Utility (LabVIEW)

## Overview

The InstrumentStudio Screenshot Utility VI captures the rendered content of an active **NI InstrumentStudio** window using Windows GDI APIs.

It uses the Windows `PrintWindow` API to capture the actual rendered window content — even if the window is behind other windows.

The utility automatically saves the captured window content as a BMP image file.

> **Note:** The window must not be minimized. The utility will not capture a minimized window.

It is intended for automated validation and reporting workflows where visual documentation of instrument configuration or measurement results is required.

---

## Features

- Uses Windows `PrintWindow` for reliable window capture
- Works with background windows (not minimized)
- DPI-aware — handles display scaling (100%, 125%, 150%, etc.)
- Returns error if InstrumentStudio window is not open
- Callable from LabVIEW, TestStand, or other Windows applications

---

## System Requirements

- Windows operating system  
- NI InstrumentStudio installed  
- LabVIEW 2019 or later (or compatible version)

---

## Prerequisites

Before running the utility:

- InstrumentStudio must already be launched  
- Required Soft Front Panel (SFP) must be open  
- The SFP must be fully loaded and stable  
- InstrumentStudio window must not be minimized
- InstrumentStudio must not be starting up or shutting down  

> **Note:**  
> The utility does not launch InstrumentStudio or configure instruments.  
> It captures the current visual state of an already running session.  
> If InstrumentStudio is not open, the utility will return an error.

---

## VI API

**Main VI:** `InstrumentStudio Screenshot Capture.vi`  
**Library:** `Screenshot Utility.lvlib`  
**Project:** `Screenshot Utility.lvproj`

### Inputs

| Input                                | Type   | Description                                              |
|--------------------------------------|--------|----------------------------------------------------------|
| `Output Folder to Save Screenshot`   | Path   | Directory where the screenshot will be saved (default: `C:\Temp`) |
| `Base File Name (*.bmp)`             | String | Base filename including `.bmp` extension (default: `InstrStudio_Screenshot.bmp`) |


Note: The image will be saved with timestamp.

### Outputs

| Output                   | Type    | Description                      |
|--------------------------|---------|----------------------------------|
| `Save Image Successful?` | Boolean | `True` if capture succeeded      |

---

## Basic Usage (LabVIEW)

### Adding to Your Project

1. Open `Screenshot Utility.lvproj` in LabVIEW.
2. Place `InstrumentStudio Screenshot Capture.vi` on your block diagram.
3. Wire the required inputs.
4. Check the `Save Image Successful?` output to verify capture completion.

### Example Block Diagram

```
Output Folder to Save Screenshot: "C:\Temp"
Base File Name (*.bmp): "InstrStudio_Screenshot.bmp"
     ↓
[InstrumentStudio Screenshot Capture.vi]
     ↓
Save Image Successful? (Boolean) → Use for pass/fail logic
```

### Example Output

```
C:\Temp\InstrStudio_Screenshot.bmp
```

---

## Supported Output Format

| Format | Extension |
|--------|-----------|
| Bitmap | `.bmp`    |

---

## Running from NI TestStand

The utility can be integrated with NI TestStand as a LabVIEW Plugin step.

### Steps to Configure

1. Insert a **LabVIEW Plug-in** step in TestStand.
2. Select `InstrumentStudio Screenshot Capture.vi`.
3. Provide parameters:

```
Output Folder to Save Screenshot: "C:\\Temp"
Base File Name (*.bmp): "TS_Screenshot.bmp"
```

---

## Known Limitations

- Works only on Windows  
- Window must exist in active user session  
- Hardware-accelerated UI elements may render differently  
- In multi-monitor systems, consistent DPI scaling is recommended  
- Window title must contain `"InstrumentStudio"`  
- Only BMP format is supported  
- Not tested for all edge cases (complex multi-panel layouts, etc.)

---

## Typical Automation Workflow

1. Launch NI InstrumentStudio  
2. Open required Soft Front Panels  
3. Configure instrument settings  
4. Execute measurement  
5. Call `InstrumentStudio Screenshot Capture.vi`  
6. Archive image for validation or reporting  

---

## Troubleshooting

| Issue                          | Solution                                                          |
|--------------------------------|-------------------------------------------------------------------|
| "Window not found" error       | Ensure InstrumentStudio is running and visible in user session    |
| Minimized window not captured  | Restore the InstrumentStudio window before running the utility   |
| Partial image captured         | Check display scaling settings; DPI scaling may need adjustment   |
| File save fails                | Ensure output folder exists and path is writable                  |
| Color tinge in saved image     | Verify R/B channel swap is applied in pixel data processing      |

---

## Project Structure

```
source/
│
├── Screenshot Utility.lvproj
├── Screenshot Utility.lvlib
├── InstrumentStudio Screenshot Capture.vi
├── SubVIs
└── Examples/
    ├── Example - Screenshot Capture.vi
    └── Test Screenshot Utility.seq
```

---

