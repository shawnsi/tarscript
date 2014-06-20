#!/bin/bash

NAME=$1
SCRIPTDIR=$(dirname $0)
TARSCRIPT=${NAME}.tarscript

cp $SCRIPTDIR/header.sh $TARSCRIPT 

tar czf - . | uuencode -m - >> $TARSCRIPT

cat $SCRIPTDIR/footer.sh >> $TARSCRIPT
