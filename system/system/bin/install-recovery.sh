#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f6d0d28327a6ec6a0a6d16ddc83965b8460a8e6e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:311aa410fbbab151db60ebe9dbd8779a661e3089 EMMC:/dev/block/bootdevice/by-name/recovery f6d0d28327a6ec6a0a6d16ddc83965b8460a8e6e 67108864 311aa410fbbab151db60ebe9dbd8779a661e3089:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
