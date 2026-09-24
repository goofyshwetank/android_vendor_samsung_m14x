#!/system/bin/sh
while true; do
    logcat -d -v time >> /data/local/tmp/boot_logcat.txt
    sync
    sleep 2
done
