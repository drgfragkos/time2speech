#!/bin/bash
ruby time2words.rb | ./speech_google.sh >/dev/null 2>&1
