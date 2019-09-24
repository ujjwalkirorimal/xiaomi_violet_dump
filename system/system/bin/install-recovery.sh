#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:4b1e2762a016e21de39b1565a8918f56e00d0900; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f70a2df658be528a609a6348b3dbb32deb57ddb5 EMMC:/dev/block/bootdevice/by-name/recovery 4b1e2762a016e21de39b1565a8918f56e00d0900 67108864 f70a2df658be528a609a6348b3dbb32deb57ddb5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
