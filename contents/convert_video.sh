#!/bin/sh
ffmpeg -i ${1}.mp4 ${1}.webm
ffmpeg -i ${1}.mp4 ${1}.ogv
ffmpeg -i ${1}.mp4 ${1}.ogg