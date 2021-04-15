#!/bin/bash -eu
set -o pipefail

#    Converts all files in the execution directory and its sub directories
#    44.1kHz 16bit mono summed.
#    Script is nondestructive and saves the re-encoded audio to a new directory,
#    preserving the directory structure.

rsync -av --include='*/' --exclude='*' . ./squid
find . -path ./squid -prune -false -o -name "*.wav" -exec bash -c 'ffmpeg -i "{}" -ac 1 -acodec pcm_s16le -ar 44100 "./squid/${0/.wav}_sq.wav"' {} \;

