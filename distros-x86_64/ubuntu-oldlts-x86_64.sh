DISTRO_NAME="Ubuntu (22.04 LTS)"
DISTRO_COMMENT="Previous LTS release (jammy)."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-jammy-x86_64-pd-v4.11.0.tar.xz"
TARBALL_SHA256['x86_64']="63537446a798480b9fb1415b195ebb9f9e67ef291c49d044fc5444935121b6f9"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
