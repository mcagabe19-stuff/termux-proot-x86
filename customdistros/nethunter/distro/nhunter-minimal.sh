DISTRO_NAME="Nethunter Minimal"
DISTRO_COMMENT="Rolling Release (2023.4)."

TARBALL_URL['aarch64']="https://kali.download/nethunter-images/kali-2023.4/rootfs/kalifs-arm64-minimal.tar.xz"
TARBALL_SHA256['aarch64']="fe5594de8c93918be9fb5da1302af9a5c2c57bfd23a296f6c3a4b8f62d4fbe69"
TARBALL_URL['arm']="https://kali.download/nethunter-images/kali-2023.4/rootfs/kalifs-armhf-minimal.tar.xz"
TARBALL_SHA256['arm']="0cc641969516c1755af1165e86a6bdd8c72248058a813b78ae772f8b256aa913"
TARBALL_URL['i686']="https://kali.download/nethunter-images/kali-2023.4/rootfs/kalifs-i386-minimal.tar.xz"
TARBALL_SHA256['i686']="ce940e3977dbc4da1ce4f24123e8f59a11b1fdab4b5fe48b1c857ed43d905f91"
TARBALL_URL['x86_64']="https://kali.download/nethunter-images/kali-2023.4/rootfs/kalifs-amd64-minimal.tar.xz"
TARBALL_SHA256['x86_64']="06dcc3e8c152ae9c28059b8472d947bf514ac14cd259930c42d33b9b5c1f511c"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root

	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
