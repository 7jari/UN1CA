LOG_STEP_IN "- Setting up libnfc-nci configuration"
LOG "- Copying /vendor/etc/libnfc-nci.conf to /system/system/etc/libnfc-nci.conf"
EVAL "cp -a -T \"$WORK_DIR/vendor/etc/libnfc-nci.conf\" \"$WORK_DIR/system/system/etc/libnfc-nci.conf\""
DELETE_FROM_WORK_DIR "system" "system/etc/libnfc-nci_temp.conf"
LOG_STEP_OUT

LOG_STEP_IN "- Adding JDM SLSI NFC blobs"
ADD_TO_WORK_DIR "m55xqddxx" "system" "system/lib/libnfc_sec_jni.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "m55xqddxx" "system" "system/lib64/libnfc_sec_jni.so" 0 0 644 "u:object_r:system_lib_file:s0"
