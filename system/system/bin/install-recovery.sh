#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5d5b6db0dd6e9119840c5111b6a712c145b304ed; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f48595b57b151f4341fe66420f06268e22347d97 EMMC:/dev/block/bootdevice/by-name/recovery 5d5b6db0dd6e9119840c5111b6a712c145b304ed 67108864 f48595b57b151f4341fe66420f06268e22347d97:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
