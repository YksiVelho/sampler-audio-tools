#!/bin/bash -eu
mkdir 16bit
find . -name "*.wav" -exec bash -c 'ffmpeg -i "{}" -acodec pcm_s16le -ar 44100 "./16bit/${0/.wav}_16bit.wav"' {} \;
