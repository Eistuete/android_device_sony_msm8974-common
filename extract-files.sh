#!/bin/bash

# Use tradition sort
export LC_ALL=C

FP=$(cd ${0%/*} && pwd -P)
export VENDOR=$(basename $(dirname $FP))
export DEVICE=$(basename $FP)
export TARGET_BOARD_PLATFORM=msm8974
export BOARDCONFIGVENDOR=false

../common/extract-files.sh $@

../common/setup-makefiles.sh
./setup-makefiles.sh
