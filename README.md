# Linux X86_64 and I386 In Termux
Getting x86_64 and i386 linux worked in Termux!! (via qemu-user-(x86_64, i386) and slow performance in most devices)

NOTE: SOME DISTROS CAN BE BROKEN IDK HOW TO FIX REPORT ISSUE AT [HERE](https://github.com/termux/proot-distro/issues) (ig) but if smth happens in my codes report issue here you are free to do
### Do this command (twice if apt cant find packages)
```bash
apt update && yes | apt upgrade
```
### After do this command for get worked (i386)
```bash
apt install git qemu-user-i386 proot-distro -y && git clone https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux && cd linux-x86_64-and-i386-in-termux && bash ./movedistrosi386.sh
```
### After do this command for get worked (x86_64)
```bash
apt install git qemu-user-x86-64 proot-distro -y && git clone https://github.com/mcagabe19/linux-x86_64-and-i386-in-termux && cd linux-x86_64-and-i386-in-termux && bash ./movedistrosx86_64.sh
```
## BUGS
* openSUSE broken little bit
## TODO
nothing rn
