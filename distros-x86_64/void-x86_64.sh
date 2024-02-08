DISTRO_NAME="Void Linux x86_64"
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.6.0/void-x86_64-pd-v4.6.0.tar.xz"
TARBALL_SHA256['x86_64']="12deb4ca4d9bfc7e612c8a4f4f6b719d9f6ab258c54db600aea31ab24e61a140"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
	# Fix issue where come CA certificates links may not be created.
	run_proot_cmd update-ca-certificates --fresh
}
