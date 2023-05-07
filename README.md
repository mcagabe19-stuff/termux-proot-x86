### WIP
# PRoot Distro X86_64
Getting x86_64 linux worked in Termux!! (via qemu-x86_64 and slow performance in low end devices)

NOTE: SOME DISTROS CAN BE BROKEN IDK HOW TO FIX REPORT ISSUE AT [HERE](https://github.com/termux/proot-distro/issues) (ig) but if smth happens in my codes report issue here you are free to do
### Do this command for get worked
```sh
apt update && apt install x11-repo git wget -y && git clone https://github.com/mcagabe19/linux-x86_64-in-termux && cd linux-x86_64-in-termux && bash ./runme.sh
```
## BUGS
* Apt not working in ubuntu
## TODO
* Add more distros
