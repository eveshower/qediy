#!/bin/bash

awk  '/Begin final coordinates/,/End final coordinates/{
        print $0
}' $1 |awk 'NR>=4 && !/End final coordinates/{print $0}' > finalcoord.dat
