#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

filename   = "darkness.base"

colors     = {}

vars       = 0
aliases    = 0
highlights = 0
links      = 0

with open(filename + ".vim", "w") as base:
    with open(filename) as base_raw:
        for line in base_raw.read().splitlines():
            if line:
                if line == "~ VARS":
                    vars = 1
                elif line == "~ ALIASES":
                    aliases = 1
                elif line == "~ HIGHLIGHTS":
                    highlights = 1
                elif line == "~ LINKS":
                    links = 1
                else:
                    line = line.split()
                    if links:
                        base.write("hi! link "  + line[0]  + " "  + line[1] + "\n")
                    elif highlights:
                        for i in range(1,4):
                            if line[i] in colors.keys():
                                line[i] = colors[line[i]]
                        base.write("hi! " + line[0] + " cterm=" + line[1] + " ctermfg=" + line[2] + " ctermbg=" + line[3] + "\n")
                    elif aliases:
                        colors[line[0]] = colors[line[1]]
                    elif vars:
                        colors[line[0]] = line[1]
