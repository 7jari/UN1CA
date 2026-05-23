# [
GET_SYSTEM_EXT()
{
    if $TARGET_OS_BUILD_SYSTEM_EXT_PARTITION; then
        echo "system_ext"
    else
        echo "system/system/system_ext"
    fi
}
# ]

LOG "- Applying \"$(grep "^Subject:" "$MODPATH/patches/0001-update-vendor-sepolicy-to-M05-UI-8.patch" | sed "s/.*PATCH] //")\" to /vendor/etc/selinux"
EVAL "LC_ALL=C git apply --directory='$WORK_DIR/vendor/etc/selinux' --verbose --unsafe-paths '$MODPATH/patches/0001-update-vendor-sepolicy-to-M05-UI-8.patch'" || return 1
LOG "- Applying \"$(grep "^Subject:" "$MODPATH/patches/0002-use-M05-UI-8-system_ext-sepolicy.patch" | sed "s/.*PATCH] //")\" to /$(GET_SYSTEM_EXT)/etc/selinux"
EVAL "LC_ALL=C git apply --directory='$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux' --verbose --unsafe-paths '$MODPATH/patches/0002-use-M05-UI-8-system_ext-sepolicy.patch'" || return 1

unset -f GET_SYSTEM_EXT
