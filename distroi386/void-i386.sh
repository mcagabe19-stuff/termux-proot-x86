DISTRO_NAME="Void Linux i386"

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v3.11.0/void-i686-pd-v3.11.0.tar.xz"
TARBALL_SHA256['i686']="5d90191fce3968cd4993f3c6a361c5e20ec21aa149adc113ada527a8132a3a2c"
DISTRO_ARCH="i686"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
	# Fix issue where come CA certificates links may not be created.
	run_proot_cmd update-ca-certificates --fresh
}
