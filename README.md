# Termux PRoot x86
Getting x86_64 and i686 PRoot Env working in Termux with proot-distro and qemu-user-(x86_64, i386)

**NOTE: SLOW PERFORMANCE IN EVERY DEVICE** but you can use `taskset -a -c 4-7 (command)` to little improve performance (only if u have 8 cores)

<details>
  <summary>The Commands</summary>

1. Updating Packages

```bash
apt update && yes | apt upgrade
```

2. (i686/x86) Installing

```bash
apt install git qemu-user-i386 proot-distro -y && git clone https://github.com/mcagabe19-stuff/termux-proot-x86 && cd termux-proot-x86 && bash ./movedistrosi686.sh
```
3. (amd64/x86_64) Installing

```bash
apt install git qemu-user-x86-64 proot-distro -y && git clone https://github.com/mcagabe19-stuff/termux-proot-x86 && cd termux-proot-x86 && bash ./movedistrosx86_64.sh
```

4. Well done.

</details>

## BUGS
* openKylin doesn't start on some devices
* Arch Linux, deepin and openSUSE ca-cert verifying issues
* Zsh hates termux in Kali Linux

## TODO
* Add blackarch x86_64 and parrot os if possible
