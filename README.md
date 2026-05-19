# DJI GPX Extractor

**DJI GPX Extractor** is a small Windows GUI tool that extracts GPS telemetry from DJI MP4/MOV files and saves it as a GPX track.

Author: **Adam Kucia**  
Website: http://adamk.pl  
Version: **0.8**

The application uses [ExifTool](https://exiftool.org/) to read DJI embedded timed metadata.

## Features

- Converts DJI MP4/MOV telemetry to GPX.
- Supports DJI files with embedded `djmd` / DJI timed metadata.
- GUI with language selection:
  - English
  - Polish
  - German
  - Ukrainian
- Stores the selected ExifTool path and language in `%APPDATA%\DJI_MP4_to_GPX\config.json`.
- Includes links to:
  - DJI Telemetry Overlay SRT Viewer
  - GPS Visualizer
  - Google Earth Web
  - ExifTool

## Requirements

For normal use:

- Windows
- `exiftool.exe` from https://exiftool.org/
- DJI MP4/MOV file with embedded telemetry metadata

For building the EXE:

- Python 3.8.x, recommended for Windows 7 compatibility
- PyInstaller 5.13.2

## Usage

1. Download and unpack ExifTool.
2. Run `DJI_GPX_Extractor.exe`.
3. Select `exiftool.exe` on first use.
4. Select a DJI MP4/MOV file.
5. Choose where to save the GPX file.
6. Click **Convert**.

The generated GPX can be opened in:

- https://djitelemetryoverlay.com/srt-viewer/
- https://www.gpsvisualizer.com/
- https://earth.google.com/web/

## Build from source

```cmd
cd /d C:\path\to\DJI_GPX_Extractor
py -3.8 -m pip install -r requirements-build.txt
py -3.8 -m PyInstaller --clean DJI_GPX_Extractor.spec
```

The EXE will be created in:

```text
dist\DJI_GPX_Extractor.exe
```

Alternative one-line build:

```cmd
py -3.8 -m PyInstaller --clean --onefile --windowed ^
  --name "DJI_GPX_Extractor" ^
  --icon ikona.ico ^
  --add-data "ikona.ico;." ^
  --version-file dji_gpx_extractor_version_0_8.txt ^
  dji_gpx_extractor_v0_8.py
```

## Windows 7 note

For Windows 7 compatibility, build with:

- Python 3.8.x
- PyInstaller 5.13.2

Python 3.10+ is not suitable for Windows 7 targets.

## Release asset

Do not commit `dist/` or generated EXE files into the repository.  
Attach the built EXE to a GitHub Release instead.

Suggested release asset name:

```text
DJI_GPX_Extractor_v0.8_windows.exe
```

## License

MIT License. See [LICENSE](LICENSE).
