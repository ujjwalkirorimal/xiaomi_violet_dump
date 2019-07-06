#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:76419c1ee76d044fdc6406314d4b4870343379a2; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:797f9cb5a049f33c5308e82764b84e35eb7ee2c7 EMMC:/dev/block/bootdevice/by-name/recovery 76419c1ee76d044fdc6406314d4b4870343379a2 67108864 797f9cb5a049f33c5308e82764b84e35eb7ee2c7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
