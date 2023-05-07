DISTRO_NAME="OpenSUSE x86_64"
DISTRO_COMMENT="Rolling release (Tumbleweed)."

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v3.5.1/opensuse-x86_64-pd-v3.5.1.tar.xz"
TARBALL_SHA256['x86_64']="8d9d09572bdb55d73ba09f915d7fedc8656b9c44bcccd33b2eaef0466e602878"
DISTRO_ARCH="x86_64"

distro_setup() {
	# Lock package filesystem to remove issues regarding zypper dup
	run_proot_cmd zypper al filesystem
}