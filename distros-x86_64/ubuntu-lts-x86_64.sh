DISTRO_NAME="Ubuntu x86_64 (23.04 LTS)"
DISTRO_COMMENT="LTS release (jammy)."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-jammy-x86_64-pd-v4.8.0.tar.xz"
TARBALL_SHA256['x86_64']="07b0c89897348f4312ce087e521eadf7937c939ee41f02a444caaff37cdd3407"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
