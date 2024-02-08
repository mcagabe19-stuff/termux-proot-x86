DISTRO_NAME="Ubuntu x86_64 (23.10)"
DISTRO_COMMENT="Regular release (mantic)."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-mantic-x86_64-pd-v4.8.0.tar.xz"
TARBALL_SHA256['x86_64']="b621afb46a182ce2aa06d06b2d3bc077bbdf08b3557b892d5ca74ff1c9afc206"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
