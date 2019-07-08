#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:a37ededf88254771a8920fa85fe7a311e73d9080; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:2b12b171d2d20df7ea2543396bf214f3ac3385b9 EMMC:/dev/block/bootdevice/by-name/recovery a37ededf88254771a8920fa85fe7a311e73d9080 67108864 2b12b171d2d20df7ea2543396bf214f3ac3385b9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
