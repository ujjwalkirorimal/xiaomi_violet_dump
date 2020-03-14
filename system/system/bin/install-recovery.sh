#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7474822060d606945c1c7b6d257d4cf02d3a1be5; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:0fbadd0b38b8676403d90349a1286c1243fe446f EMMC:/dev/block/bootdevice/by-name/recovery 7474822060d606945c1c7b6d257d4cf02d3a1be5 67108864 0fbadd0b38b8676403d90349a1286c1243fe446f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
