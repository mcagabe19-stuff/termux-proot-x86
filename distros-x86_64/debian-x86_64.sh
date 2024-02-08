DISTRO_NAME="Debian x86_64 (bookworm)"
DISTRO_COMMENT="Stable release."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.7.0/debian-bookworm-x86_64-pd-v4.7.0.tar.xz"
TARBALL_SHA256['x86_64']="164932ab77a0b94a8e355c9b68158a5b76d5abef89ada509488c44ff54655d61"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

