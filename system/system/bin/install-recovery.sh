#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b9c9d789a89bbd8eeaf6952e8c106037f3093e6d; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8583d1bf538ac570d99a120e82ed58dffc0e8dce EMMC:/dev/block/bootdevice/by-name/recovery b9c9d789a89bbd8eeaf6952e8c106037f3093e6d 67108864 8583d1bf538ac570d99a120e82ed58dffc0e8dce:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
