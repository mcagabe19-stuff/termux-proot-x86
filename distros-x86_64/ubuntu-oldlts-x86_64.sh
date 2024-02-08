DISTRO_NAME="Ubuntu (22.04 LTS)"
DISTRO_COMMENT="Previous LTS release (focal)."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-focal-x86_64-pd-v4.8.0.tar.xz"
TARBALL_SHA256['x86_64']="9ced22fc16aec1de554fd1d6fa12e628a27a6db2f00924b43d8b32cbeb1f1454"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
