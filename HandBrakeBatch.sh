#!/bin/sh

INDIR=$1
OUTDIR=$2
PREFIX=$3

echo "Input Dir $INDIR\n"
echo "Output Dir $OUTDIR\n"
echo "File Prefix $PREFIX\n"

for i in `ls "$INDIR"`
do
  HandBrakeCLI -e x264 -b 2500 -r 23.976 -Y720 -i "$INDIR/$i" -o "$OUTDIR/$PREFIX_$i.m4v"
done

