LOG_STEP_IN "- Adding Polarr libs from a73xqxx"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/etc/public.libraries-polarr.txt" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libBestComposition.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libFeature.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libPolarrSnap.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libTracking.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libYuv.polarr.so" 0 0 644 "u:object_r:system_lib_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "- Adding camera libs from stock"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libSceneDetector_v1.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/liblow_light_hdr.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhigh_dynamic_range.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhumantracking.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhumantracking_util.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libsecimaging_pdk.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libveengine.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "- Replace MIDAS config files with a73xqxx"
DELETE_FROM_WORK_DIR "vendor" "etc/midas"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "etc/midas" 0 2000 755 "u:object_r:vendor_configs_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "- Patching SamsungCamera zoom pill to include 0.5x"
DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk"
SMALI="smali_classes4/com/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController.smali"
EVAL "mkdir -p \"$(dirname "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk/$SMALI")\""
EVAL "cp -a \"$MODPATH/$SMALI\" \"$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk/$SMALI\""

SMALI="smali_classes4/com/sec/android/app/camera/setting/repository/CameraSettingsImpl.smali"
EVAL "mkdir -p \"$(dirname "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk/$SMALI")\""
EVAL "cp -a \"$MODPATH/$SMALI\" \"$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk/$SMALI\""

SMALI="smali_classes4/com/sec/android/app/camera/engine/core/CapabilityImpl.smali"
EVAL "mkdir -p \"$(dirname "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk/$SMALI")\""
EVAL "cp -a \"$MODPATH/$SMALI\" \"$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk/$SMALI\""
LOG_STEP_OUT

