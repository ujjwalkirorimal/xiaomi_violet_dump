#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:604200ea867dc7599a9bbd9e1ec0f8b24ffc4867; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:6800c0bde2aa0aa3ed504b10a4df4ffb5df5ae0b EMMC:/dev/block/bootdevice/by-name/recovery 604200ea867dc7599a9bbd9e1ec0f8b24ffc4867 67108864 6800c0bde2aa0aa3ed504b10a4df4ffb5df5ae0b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
