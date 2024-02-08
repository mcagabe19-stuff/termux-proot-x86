DISTRO_NAME="Void Linux i686"
DISTRO_ARCH="i686"

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v4.6.0/void-i686-pd-v4.6.0.tar.xz"
TARBALL_SHA256['i686']="8fa3b582ebf6c06603b975f1f7a95bac0d0c971ce79caae4c68fd9b9dc39fd1e"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
	# Fix issue where come CA certificates links may not be created.
	run_proot_cmd update-ca-certificates --fresh
}
