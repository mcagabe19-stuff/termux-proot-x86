DISTRO_NAME="BlackArch Linux"
DISTRO_COMMENT="Not available for x86 32-bit (i686) CPUs."

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.6.0/archlinux-aarch64-pd-v4.6.0.tar.xz"
TARBALL_SHA256['aarch64']="7e87d551845aedae5a111d1fdcc2f5a69b0805f365244f3fab3fe67cd4114f00"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.6.0/archlinux-arm-pd-v4.6.0.tar.xz"
TARBALL_SHA256['arm']="9edc60150ffdeae42b05fdcffdf06226641c442673f66b64af369504abe83a4b"
TARBALL_URL['x86_64']="https://github.com/mcagabe19-stuff/termux-proot-x86/releases/download/blackarchfs/blackarch-netinstall-rootfs-x86_64.tar.xz"
TARBALL_SHA256['x86_64']="a0865f7cf44d94c88b5ab5699499d9ea4dff2c521ea60c33f6a506b3edf92500"

distro_setup() {
        # Fix environment variables on login or su.
        local f
        for f in su su-l system-local-login system-remote-login; do
                echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/"${f}"
        done

        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd locale-gen

        if [ "$DEVICE_CPU_ARCH" != "x86_64" ]; then
        # Fix untrusted signs (for BlackArch mostly)
        run_proot_cmd sed -i '/SigLevel    = Required DatabaseOptional/c\SigLevel = Required DatabaseOptional TrustAll' /etc/pacman.conf

        # BlackArch installing progress
        run_proot_cmd curl -O https://blackarch.org/strap.sh
        run_proot_cmd chmod +x strap.sh
        run_proot_cmd ./strap.sh
        fi
}

