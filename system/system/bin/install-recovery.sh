#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:4c995ed2b9e18b11978f4347ad3ed3e9e3bb2b3a; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:6e2a0f4bd834a8b86d2b47f867adb17eb100003f EMMC:/dev/block/bootdevice/by-name/recovery 4c995ed2b9e18b11978f4347ad3ed3e9e3bb2b3a 67108864 6e2a0f4bd834a8b86d2b47f867adb17eb100003f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
