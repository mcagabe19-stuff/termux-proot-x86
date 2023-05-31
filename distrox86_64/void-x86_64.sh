DISTRO_NAME="Void Linux x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v3.11.0/void-x86_64-pd-v3.11.0.tar.xz"
TARBALL_SHA256['x86_64']="676546678dc2fdfc4e5ffa5c3dc8b3aa5dc8b884108fdf2346f4edd0311679bc"
DISTRO_ARCH="x86_64"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
	# Fix issue where come CA certificates links may not be created.
	run_proot_cmd update-ca-certificates --fresh
}
