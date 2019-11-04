#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ceb111bbe7d901d606681b07c2db1e37c706662c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:1e26bfc0b22252bbb7a1317194ce2e5b91355281 EMMC:/dev/block/bootdevice/by-name/recovery ceb111bbe7d901d606681b07c2db1e37c706662c 67108864 1e26bfc0b22252bbb7a1317194ce2e5b91355281:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
