#!/bin/bash

# get current magic mouse speed

defaults read -g com.apple.mouse.scaling

# change magic mouse speed

defaults write -g com.apple.mouse.scaling 5
