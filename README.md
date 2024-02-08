# Termux PRoot x86
Getting x86_64 and i386 PRoot Env working in Termux with proot-distro and qemu-user-(x86_64, i386)

**NOTE: SLOW PERFORMANCE IN EVERY DEVICE**

<details>
  <summary>The Commands</summary>

1. Updating Packages

```bash
apt update && yes | apt upgrade
```

2. (i386/x86) Installing

```bash
apt install git qemu-user-i386 proot-distro -y && git clone https://github.com/mcagabe19-stuff/termux-proot-x86 && cd termux-proot-x86 && bash ./movedistrosi386.sh
```
3. (amd64/x86_64) Installing

```bash
apt install git qemu-user-x86-64 proot-distro -y && git clone https://github.com/mcagabe19-stuff/termux-proot-x86 && cd termux-proot-x86 && bash ./movedistrosx86_64.sh
```

4. Well done.

</details>

## BUGS
* openSUSE broken little bit

## TODO
* Update distro's to latest and test them
