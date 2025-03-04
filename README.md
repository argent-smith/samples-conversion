# Audio Conversion Scripts

This repository contains scripts for converting `.wav` audio files using `sox`. The scripts are available in `bash` and `fish` shell formats.

## Prerequisites

Ensure you have `sox` installed on your system. You can install `sox` using `homebrew` on macOS or using your package manager on Linux. If you don't have `homebrew` installed, follow these steps:

### Install Homebrew (macOS)

Open your terminal and run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Sox (macOS)

Once `homebrew` is installed, you can install `sox` by running:

```bash
brew install sox
```

### Install Sox (Linux)

On Linux, you can install `sox` using your package manager. For example, on Debian-based systems (like Ubuntu), run:

```bash
sudo apt-get install sox
```

Additionally, ensure you have either `bash` or `fish` shell installed on your system to run the respective scripts.

## Scripts

### convert.sh

A `bash` script to convert `.wav` files.

### convert.fish

A `fish` script to convert `.wav` files.

## Encoder Settings

The following encoder settings are used in both scripts:

- `bit_depth`: The bit depth of the output audio file. Default is `16`.
- `channels`: The number of audio channels. Default is `1` (mono).
- `sample_rate`: The sample rate of the output audio file. Default is `44100` Hz.

## Usage

1. Place your `.wav` files in the directory.
2. Run the script (`convert.sh` or `convert.fish`) to process the files.
3. The output files will be saved in the `sox-out` directory, preserving the original directory structure.

## Example

To run the `bash` script:

```bash
./convert.sh
```

To run the `fish` script:

```fish
./convert.fish
```
