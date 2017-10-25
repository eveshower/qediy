#!/bin/bash

awk  'BEGIN{
    n=0;
    tot=0;
}
/Begin final coordinates/,/End final coordinates/{
        print $0
}' $1 |awk 'NR>=4 && !/End final coordinates/{print $0}' > finalcoord.dat
