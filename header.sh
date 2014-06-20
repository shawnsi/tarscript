#!/bin/bash

ORIGDIR=$(pwd)

PARENTDIR=/tmp/tarscript
mkdir -p $PARENTDIR
TMPDIR=$(mktemp -d -p $PARENTDIR)
cd $TMPDIR

cat << EOF | uudecode | tar xzf -
