### WIP
# Linux X86_64 and I386 In Termux
Getting x86_64 and i386 linux worked in Termux!! (via qemu-user-(x86_64, i386) and slow performance in some devices)

NOTE: SOME DISTROS CAN BE BROKEN IDK HOW TO FIX REPORT ISSUE AT [HERE](https://github.com/termux/proot-distro/issues) (ig) but if smth happens in my codes report issue here you are free to do
### Do this command (twice if apt cant find packages)
```sh
apt update && yes | apt upgrade
```
### After do this command for get worked (i386)
```sh
apt install git qemu-user-i386 proot-distro -y && git clone https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux && cd linux-x86_64-and-i386-in-termux && bash ./movedistrosi386.sh
```
### After do this command for get worked (x86_64)
```sh
apt install git qemu-user-x86-64 proot-distro -y && git clone https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux && cd linux-x86_64-and-i386-in-termux && bash ./movedistrosx86_64.sh
```
## BUGS
* Apt not working in ubuntu
* openSUSE broken little bit
## TODO
nothing rn
## NeoFetch Infos
* Alpine Linux
![Alpine Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/alpine.jpg)
* Debian
![Debian Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/debian.jpg)
* Fedora
![Fedora Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/fedora.jpg)
* OpenSUSE
![OpenSUSE Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/opensuse.jpg)
* Pardus
![Pardus Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/pardus.jpg)
* Ubuntu
![Ubuntu Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/ubuntu.jpg)
* Void Linux
![Void Linux Info](https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux/raw/main/screenshots/void.jpg)
