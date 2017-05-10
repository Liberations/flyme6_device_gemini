#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14573568:03e8d0a5268fff28bae3be47748769f621405c97; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13688832:f9e996ffc7a1b5556a9ed2c62b3b3f6eaaf5f1af EMMC:/dev/block/bootdevice/by-name/recovery 03e8d0a5268fff28bae3be47748769f621405c97 14573568 f9e996ffc7a1b5556a9ed2c62b3b3f6eaaf5f1af:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
