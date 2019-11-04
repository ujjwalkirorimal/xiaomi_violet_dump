#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ab2973dbcf5e042025169d365304f9731861df82; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8aa9f59f3e1e5ed4315129618f4abe6d1280c4b9 EMMC:/dev/block/bootdevice/by-name/recovery ab2973dbcf5e042025169d365304f9731861df82 67108864 8aa9f59f3e1e5ed4315129618f4abe6d1280c4b9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
