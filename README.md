# Sampler audio tools
Collection of command line tools to bulk-convert .wav files to the right format.

## Requirements
* [ffmpeg](https://ffmpeg.org/) installed

## Usage
It is recommended to copy the `.sh` files to your `/usr/local/bin` directory for easy access.
The script needs to be run in the directory containing the samples, where it will create a directory in which all the converted `.wav` files will be stored.
Step by step:
* open Terminal
* navigate to your sample directory e.g.: `cd Samples/drums/snares`
* run e.g. `mpc-convert.sh`
* all converted files are now located in `~/Samples/drums/snares/16bit`

## mpc-file-converter
Very simple bash script to batch convert all .wav files to mpc 1000 applicable 16bit .wav files in a folder

## Squid convert
The script is non destructive and leaves your original audio files untouched.

### Usage:
* Run `squid-convert.sh` in your sample directory.

**Caution:** The script will copy the structure of the current directory to a new directory `./squid` and convert *all* `.wav` files in *all* the sub directories to 44.1kHz 16bit left channel mono

