DISTRO_NAME="AmogOS"
DISTRO_COMMENT="Available for ARM CPUs."

TARBALL_URL['arm']="https://github.com/Amog-OS/AmogOS/releases/download/1.7.1/AmogOSv1-7-1_armhf.img.xz"
TARBALL_SHA256['arm']="0a6d138a8034770f9b4d7151a76955b04feeb3b71b307bd660ac31cf1bbe3799"
# TARBALL_URL['x86_64']=""
# TARBALL_SHA256['x86_64']=""

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

