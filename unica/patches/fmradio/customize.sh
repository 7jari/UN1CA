SOURCE_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$SOURCE_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$SOURCE_FIRMWARE")"
TARGET_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$TARGET_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$TARGET_FIRMWARE")"

SOURCE_HAS_FMRADIO="$(test -f "$FW_DIR/$SOURCE_FIRMWARE_PATH/system/system/etc/permissions/privapp-permissions-com.sec.android.app.fm.xml" && echo "true" || echo "false")"
TARGET_HAS_FMRADIO="$(test -f "$FW_DIR/$TARGET_FIRMWARE_PATH/system/system/etc/permissions/privapp-permissions-com.sec.android.app.fm.xml" && echo "true" || echo "false")"

if ! $SOURCE_HAS_FMRADIO; then
    if $TARGET_HAS_FMRADIO; then
        LOG "- Downloading Samsung FM Radio app"
        DOWNLOAD_FILE "$(GET_GALAXY_STORE_DOWNLOAD_URL "com.sec.android.app.fm")" "$WORK_DIR/system/system/priv-app/HybridRadio/HybridRadio.apk"
        SET_METADATA "system" "system/priv-app/HybridRadio" 0 0 755 "u:object_r:system_file:s0"
        SET_METADATA "system" "system/priv-app/HybridRadio/HybridRadio.apk" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "a25xdxx" "system" "system/etc/permissions/privapp-permissions-com.sec.android.app.fm.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "a25xdxx" "system" "system/etc/permissions/signature-permissions-com.sec.android.app.fm.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "a25xdxx" "system" "system/etc/sysconfig/preinstalled-packages-com.sec.android.app.fm.xml" 0 0 644 "u:object_r:system_file:s0"
    else
        LOG "\033[0;33m! Nothing to do\033[0m"
    fi
else
    if ! $TARGET_HAS_FMRADIO; then
        ABORT "Missing patch for condition (SOURCE_HAS_FMRADIO: [$SOURCE_HAS_FMRADIO], TARGET_HAS_FMRADIO: [$TARGET_HAS_FMRADIO]). Aborting"
    fi
fi

unset SOURCE_FIRMWARE_PATH TARGET_FIRMWARE_PATH SOURCE_HAS_FMRADIO TARGET_HAS_FMRADIO
