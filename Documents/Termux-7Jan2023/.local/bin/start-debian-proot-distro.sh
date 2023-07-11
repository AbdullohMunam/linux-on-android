#!/data/data/com.termux/files/usr/bin/bash
cd .
pulseaudio --start

### custom by abdulloh

## unset LD_PRELOAD in case termux-exec is installed
unset LD_PRELOAD
command="proot"
command+=" --link2symlink"
command+=" -0"
command+=" -r /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian"
if [ -n "" ]; then
    for f in debian-binds/* ;do
      . 
    done
fi
command+=" -b /dev"
command+=" -b /proc"
command+=" -b /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/root:/dev/shm"
## uncomment the following line to have access to the home directory of termux
#command+=" -b /data/data/com.termux/files/home:/root"
## uncomment the following line to mount /sdcard directly to /
command+=" -b /sdcard"

#### custom by abdulloh
command+=" -b /:/redmi"
## for termux-x11 shared tmp
#command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"

command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=xterm-256color"
command+=" LANG=C.UTF-8"
command+=" /bin/bash --login"
com="$@"
if [ -z "$1" ];then
    exec $command
else
    $command -c "$com"
fi
