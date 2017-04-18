#!/bin/bash

function getVol {
/usr/local/bin/mpc volume 2> /dev/null
}

VOL=$(getVol | cut -d' ' -f2- | tr -dc '0-9');

VOLUME=""


if [[ "$VOL" =~ ^[0-9]+$ ]]; then

VOLUME="$VOL";
else
VOLUME="X"
fi

if [[ "$VOL" = "0" ]]; then
VOLUME="X"
fi

echo $VOLUME;

