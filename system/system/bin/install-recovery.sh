#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ab32ef7b52ecab6cd6a808f4c25ea06bab38bf04; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:97342fb73bfbc92bf4f8ef75cbf6f5d6d93b5964 EMMC:/dev/block/bootdevice/by-name/recovery ab32ef7b52ecab6cd6a808f4c25ea06bab38bf04 67108864 97342fb73bfbc92bf4f8ef75cbf6f5d6d93b5964:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
