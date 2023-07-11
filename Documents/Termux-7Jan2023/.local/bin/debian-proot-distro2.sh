#!/data/data/com.termux/files/usr/bin/bash

pulseaudio

command="proot"
command+=" --bind=/vendor"
command+=" --bind=/system"
command+=" --bind=/data/data/com.termux/files/usr"
command+=" --bind=/linkerconfig/ld.config.txt"
command+=" --bind=/apex"
command+=" --bind=/storage/self/primary:/storage/self/primary"
command+=" --bind=/storage/self/primary:/storage/emulated/0"
command+=" --bind=/storage/self/primary:/sdcard"
command+=" --bind=/data/data/com.termux/files/home"
command+=" --bind=/data/data/com.termux/cache"
command+=" --bind=/data/dalvik-cache"
command+=" --bind=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/tmp:/dev/shm"
command+=" --bind=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/proc/.vmstat:/proc/vmstat"
command+=" --bind=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/proc/.version:/proc/version"
command+=" --bind=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/proc/.uptime:/proc/uptime"
command+=" --bind=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/proc/.stat:/proc/stat"
command+=" --bind=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/proc/.loadavg:/proc/loadavg"
command+=" --bind=/sys"
command+=" --bind=/proc/self/fd/2:/dev/stderr"
command+=" --bind=/proc/self/fd/1:/dev/stdout"
command+=" --bind=/proc/self/fd/0:/dev/stdin"
command+=" --bind=/proc/self/fd:/dev/fd"
command+=" --bind=/proc"
command+=" --bind=/dev/urandom:/dev/random"

command+=" -b /:/redmi"
## for termux-x11 shared tmp
#command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"

command+=" --bind=/dev --root-id --cwd=/root -L --kernel-release=6.2.1-PRoot-Distro --sysvipc"
command+=" --link2symlink --kill-on-exit"
command+=" --rootfs=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian /usr/bin/env -i HOME=/root LANG=C.UTF-8 TERM=xterm-256color /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/bin/su -l root"

exec $command
