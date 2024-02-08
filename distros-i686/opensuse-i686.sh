DISTRO_NAME="OpenSUSE i686"
DISTRO_COMMENT="Rolling release (Tumbleweed)."
DISTRO_ARCH="i686"

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v4.6.0/opensuse-i686-pd-v4.6.0.tar.xz"
TARBALL_SHA256['i686']="e497ebea3d92c676a320f48ed35146d564160791dbfa7bc677f0959bb3a40248"

distro_setup() {
	# Lock package filesystem to remove issues regarding zypper dup
	run_proot_cmd zypper al filesystem
}
