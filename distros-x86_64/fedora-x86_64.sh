DISTRO_NAME="Fedora x86_64"
DISTRO_COMMENT="Version 39."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.6.0/fedora-x86_64-pd-v4.6.0.tar.xz"
TARBALL_SHA256['x86_64']="49ffa79c24db6a2ee664b2e29268e534c11e1a984b694f8c56551ddb12dde8b3"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
