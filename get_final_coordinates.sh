#!/bin/bash
# usage: $./get_final_coordinates.sh relax.out
# modify NR>=1 or NR>=4 for your own purpose

awk  '/Begin final coordinates/,/End final coordinates/{
        print $0
}' $1 |awk 'NR>=4 && !/End final coordinates/{print $0}' > finalcoord.dat
