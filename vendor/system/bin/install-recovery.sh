#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15114240:39a6553831927bd3e01114a6eb3e0158efdd9416; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:14229504:d3b550172950dc6ffe7a204098a211bdd379461d EMMC:/dev/block/bootdevice/by-name/recovery 39a6553831927bd3e01114a6eb3e0158efdd9416 15114240 d3b550172950dc6ffe7a204098a211bdd379461d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
