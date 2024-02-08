DISTRO_NAME="Debian i686 (bullseye)"
DISTRO_COMMENT="Old stable release."
DISTRO_ARCH="i686"

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v4.7.0/debian-bullseye-i686-pd-v4.7.0.tar.xz"
TARBALL_SHA256['i686']="c38f0d2736c6cdf9b33d7ebd904b3d9218a55bad83030dc447925bec10c0bd6c"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

