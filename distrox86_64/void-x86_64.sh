DISTRO_NAME="Void Linux x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v3.5.1/void-x86_64-pd-v3.5.1.tar.xz"
TARBALL_SHA256['x86_64']="dc1bd6ce37f3668565310b23b0ab2181ae33ea680211b2541cce896b03c45644"
DISTRO_ARCH="x86_64"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
}