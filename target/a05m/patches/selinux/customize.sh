LOG "- Applying \"$(grep "^Subject:" "$MODPATH/patches/vendor/etc/selinux/0001-update-vendor-sepolicy-to-M05-UI-8.patch" | sed "s/.*PATCH] //")\" to /vendor/etc/selinux"
EVAL "LC_ALL=C git apply --directory='$WORK_DIR/vendor/etc/selinux' --verbose --unsafe-paths '$MODPATH/patches/vendor/etc/selinux/0001-update-vendor-sepolicy-to-M05-UI-8.patch'" || return 1
