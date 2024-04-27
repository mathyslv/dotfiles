#!/usr/bin/env bash

IMAGE="/tmp/lock.png"
BLUR_GEOMETRY="2x8"
BLUR_ANGLE=5

rm -f "${IMAGE}"
scrot "${IMAGE}"
convert "${IMAGE}" -scale 10% -scale 1000% -radial-blur "${BLUR_ANGLE}" -blur "${BLUR_GEOMETRY}" "${IMAGE}"
betterlockscreen --fx "" -u "${IMAGE}" --lock
