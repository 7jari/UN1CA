#!/system/bin/sh
# https://android.googlesource.com/platform/external/avb/+/88b13e12a0ebe3c5195dbb5f48ba00ec896d1517

rezetprop -n ro.boot.flash.locked "1"
rezetprop -n ro.boot.vbmeta.avb_version "1.3"
rezetprop -n ro.boot.vbmeta.device_state "locked"
rezetprop -n ro.boot.vbmeta.digest "$(dd if=/dev/block/by-name/vbmeta bs=1 count=VB_SIZE 2> /dev/null | sha256sum -b)"
rezetprop -n ro.boot.vbmeta.hash_alg "sha256"
rezetprop -n ro.boot.vbmeta.invalidate_on_error "yes"
rezetprop -n ro.boot.vbmeta.public_key_digest "$(dd if=/dev/block/by-name/vbmeta bs=1 skip=PK_OFFSET count=PK_SIZE 2> /dev/null | sha256sum -b)"
rezetprop -n ro.boot.vbmeta.size "VB_SIZE"
rezetprop -n ro.boot.warranty_bit "0"
rezetprop -n ro.boot.verifiedbootstate "green"
rezetprop -n ro.boot.veritymode "enforcing"
rezetprop -n ro.vendor.boot.warranty_bit "0"

# Keep the exposed security patch and first API level aligned with the active PIF profile.
# Do not override either value when PIF has no usable custom value.
PIF_SECURITY_PATCH="$(getprop persist.sys.pif.security_patch)"
if [ -n "$PIF_SECURITY_PATCH" ] && [ "$PIF_SECURITY_PATCH" != "null" ]; then
    rezetprop -n ro.build.version.security_patch "$PIF_SECURITY_PATCH"
    rezetprop -n ro.vendor.build.security_patch "$PIF_SECURITY_PATCH"
else
    rezetprop -n ro.vendor.build.security_patch "$(getprop ro.build.version.security_patch)"
fi

PIF_FIRST_API_LEVEL="$(getprop persist.sys.pif.first_api_level)"
if [ -n "$PIF_FIRST_API_LEVEL" ] && [ "$PIF_FIRST_API_LEVEL" != "null" ]; then
    case "$PIF_FIRST_API_LEVEL" in
        *[!0-9]*)
            ;;
        *)
            rezetprop -n ro.product.first_api_level "$PIF_FIRST_API_LEVEL"
            ;;
    esac
fi
