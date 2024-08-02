DISTRO_NAME="Fedora x86_64"
DISTRO_COMMENT="Version 40."
DISTRO_ARCH="x86_64"

TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v4.15.0/fedora-x86_64-pd-v4.15.0.tar.xz"
TARBALL_SHA256['x86_64']="78948fba2ba86734eb0080fdd78cb1292902df5073241e30e18313e73bfe3841"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
