#!/usr/bin/env bash
# Copyright (c) 2026 TestaMic
# SPDX-License-Identifier: GPL-3.0-or-later

SKIPUNZIP=1

# INJECT_LOCALES <partition> <apk path> <locale archive>
INJECT_LOCALES()
{
    local PARTITION="$1"
    local FILE="$2"
    local ARCHIVE="$3"

    DECODE_APK "$PARTITION" "$FILE" || return 1

    local RES_DIR="$APKTOOL_DIR/$PARTITION/${FILE//system\//}/res"
    local COUNT

    COUNT="$(tar -tzf "$ARCHIVE" | awk -F/ 'NF >= 2 && $1 ~ /^values-/ {print $1}' | sort -u | wc -l)"
    LOG "- Injecting $COUNT locale resource dirs into /$PARTITION/$FILE"
    EVAL "tar -xzf \"$ARCHIVE\" -C \"$RES_DIR\"" || return 1
}

INJECT_LOCALES "system_ext" "priv-app/SystemUI/SystemUI.apk" "$MODPATH/systemui.tar.gz"

INJECT_LOCALES "system" "system/priv-app/SecSettings/SecSettings.apk" "$MODPATH/settings.tar.gz"

if [ -f "$MODPATH/framework-res.tar.gz" ]; then
    OV_NAME="framework-res__locales__rro.apk"
    OV_DIR="$APKTOOL_DIR/product/overlay/$OV_NAME"

    LOG "- Preparing framework-res locale overlay"
    rm -rf "$OV_DIR"
    mkdir -p "$OV_DIR"
    cp -a "$MODPATH/framework-res-ov/." "$OV_DIR/"
    mkdir -p "$OV_DIR/res"
    EVAL "tar -xzf \"$MODPATH/framework-res.tar.gz\" -C \"$OV_DIR/res\"" || return 1
    SET_METADATA "product" "overlay/$OV_NAME" 0 0 644 "u:object_r:system_file:s0"
fi
