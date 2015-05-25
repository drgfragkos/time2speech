#!/bin/bash
## speech_google.sh - Text-to-Speech using Google API, using either cli argument or pipe   ##
## You may modify, reuse and distribute the code freely as long as it is referenced back   ##
## to the author using the following line: ..based on speech_google.sh by @drgfragkos      ##

TEXT=$*

if ! [ -z "$TEXT" ]; then   ## If the argument give is not empty/null
    mplayer -quiet -really-quiet -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$TEXT"
else   ## else read from pipe
    eval 'stdin=$(cat)'
    TEXT=$stdin
    mplayer -quiet -really-quiet -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$TEXT"
fi
