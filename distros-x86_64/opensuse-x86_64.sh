DISTRO_NAME="OpenSUSE x86_64"
DISTRO_COMMENT="Rolling release (Tumbleweed)."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.6.0/opensuse-x86_64-pd-v4.6.0.tar.xz"
TARBALL_SHA256['x86_64']="8cdfc2965983cfae03ae05f46eb68771cb7f19699c85bd9fb9f453cee5c7cb50"

distro_setup() {
	# Lock package filesystem to remove issues regarding zypper dup
	run_proot_cmd zypper al filesystem
}
