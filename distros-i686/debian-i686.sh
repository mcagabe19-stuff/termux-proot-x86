DISTRO_NAME="Debian i686 (bookworm)"
DISTRO_COMMENT="Stable release."
DISTRO_ARCH="i686"

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v4.7.0/debian-bookworm-i686-pd-v4.7.0.tar.xz"
TARBALL_SHA256['i686']="7425f5fe7f34c718428f235b9155adb782c29ce6347f704f4a93a9da195b9aa3"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

