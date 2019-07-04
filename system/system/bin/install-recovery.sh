#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:393e1ce9c2f20c5409d128b1b172647b3972fe41; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:65d7782fee6d25a6e0638aedd6d0851e06c01860 EMMC:/dev/block/bootdevice/by-name/recovery 393e1ce9c2f20c5409d128b1b172647b3972fe41 67108864 65d7782fee6d25a6e0638aedd6d0851e06c01860:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
