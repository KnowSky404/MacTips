#!/bin/bash

# only download audio
youtube-dl -x --audio-format mp3 https://www.youtube.com/watch?v=-j-aXuBgdOs

youtube-dl -x --audio-format mp3 https://www.youtube.com/watch\?v\=-j-aXuBgdOs --no-check-certificate
