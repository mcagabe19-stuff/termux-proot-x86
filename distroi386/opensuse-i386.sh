DISTRO_NAME="OpenSUSE i386"
DISTRO_COMMENT="Rolling release (Tumbleweed)."

TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v3.5.1/opensuse-i686-pd-v3.5.1.tar.xz"
TARBALL_SHA256['i686']="011876851125ebed1f1c8b56151e61e0ce603b6ea8f517dcd9784d9939234875"
DISTRO_ARCH="i686"

distro_setup() {
	# Lock package filesystem to remove issues regarding zypper dup
	run_proot_cmd zypper al filesystem
}