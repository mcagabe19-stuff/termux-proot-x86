DISTRO_NAME="Void Linux i386"

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v3.5.1/void-i686-pd-v3.5.1.tar.xz"
TARBALL_SHA256['i686']="3495b6e5b5d774a81f9ee1baaa0bdd87865544f57d63f8d8d950af41960988e3"
DISTRO_ARCH="i686"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
}