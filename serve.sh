#!/usr/bin/env bash

rm -Rf public
hugo server -p 2341 --disableFastRender
# --buildDrafts 
# hugo serve -D -p 1231
# hugo serve -D
