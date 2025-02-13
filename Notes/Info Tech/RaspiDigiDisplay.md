---
title: RaspiDigiDisplay
created_at: 2022-02-08T10:05:58
modified_at: 2025-02-06T23:22:49-05:00
type: Project
Repo: TinkerNerd/RaspiDigiDisplay
description: RaspiDigiDisplay is a Raspberry Pi project that installs and configures a digital display setup, including automatic cursor management, Python-based display clicker scripts, and system configurations for a smooth user experience.
category: Info Tech
topic:
  - Raspberry Pi
---
# RaspiDigiDisplay

> [!Github] [TinkerNerd/RaspiDigiDisplay](https://github.com/tinkernerd/raspidigidisplay)
> RaspiDigiDisplay is a Raspberry Pi project that installs and configures a digital display setup, including automatic cursor management, Python-based display clicker scripts, and system configurations for a smooth user experience.

## Features

- **Unclutter Installation**: Hides the mouse cursor after 0.5 seconds of inactivity.
- **Cursor Management**: Moves the cursor to the top-left corner automatically using a Python script.
- **Startup Configuration**: Ensures all necessary services and scripts run at startup, including unclutter and the cursor management script.
- **Custom Display Clicker**: Installs the `RaspiDigiDisplayClicker.py` script on the Raspberry Pi’s desktop for quick access.

## Prerequisites

- **Raspberry Pi**: Any Raspberry Pi model running Raspberry Pi OS.
- **Internet Connection**: Required to download files from GitHub.
- **Python 3**: Installed by default on Raspberry Pi OS.
- **Git**: Ensure that Git is installed on your system to clone the repository.

## Installation

Follow these simple steps to install and configure RaspiDigiDisplay:

1. Open a terminal on your Raspberry Pi.
2. Run the following command to download and execute the installer script:

   ```bash
   curl -sSL https://raw.githubusercontent.com/yourusername/RaspiDigiDisplay/main/RaspiDigiDisplay.sh | bash
   ```

   This will:
   - Download the required files from GitHub.
   - Install `unclutter` and configure it to hide the cursor after inactivity.
   - Add the necessary configurations to `lightdm` and `xserver` to disable the cursor.
   - Set up a Python script to automatically move the cursor to the top-left corner.

3. After installation, the system will automatically configure itself to start the necessary scripts on boot.

## File Structure

Here is an overview of the key files in the repository:

- **RaspiDigiDisplay.sh**: The main installation script.
- **RaspiDigiDisplayClicker.py**: The Python script placed on the Raspberry Pi desktop to handle display actions.
- **startup**: A configuration file that ensures necessary services are run at startup.

## Usage

### RaspiDigiDisplayClicker.py
This script is automatically copied to your Raspberry Pi’s desktop after installation. You can double-click it to start or run it from the terminal:

```bash
python3 ~/Desktop/RaspiDigiDisplayClicker.py
```

### Move Cursor Script

The script to automatically move the cursor to the top-left corner runs in the background after boot and is located at:

```bash
~/.config/autostart/move_cursor_to_corner.py
```

You can adjust the frequency or behavior by editing this file.

## Contributing

If you’d like to contribute to this project, please fork the repository and create a pull request. Feel free to submit issues or feature requests as well!

