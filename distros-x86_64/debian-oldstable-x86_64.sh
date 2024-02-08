DISTRO_NAME="Debian x86_64 (bullseye)"
DISTRO_COMMENT="Old stable release."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.7.0/debian-bullseye-x86_64-pd-v4.7.0.tar.xz"
TARBALL_SHA256['x86_64']="46af4f9ed6db581e3ecedb57955a27c530282eac5ec2aa0c9e525c37c117d5bd"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

