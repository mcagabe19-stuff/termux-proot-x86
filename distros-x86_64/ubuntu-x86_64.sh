DISTRO_NAME="Ubuntu x86_64 (24.04)"
DISTRO_COMMENT="Regular release (noble)."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-x86_64-pd-v4.11.0.tar.xz"
TARBALL_SHA256['x86_64']="f024b1e17413737d8b385d22736d2e3eb2af9ba665fdbda1277bcca8f397e5a2"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
