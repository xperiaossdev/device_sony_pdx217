#!/bin/bash
#
# Copyright (C) 2017-2022 The LineageOS Project
#

set -e

export DEVICE_COMMON=pdx217
export DEVICE_COMMON=sagami
export VENDOR=sony

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
