DISTRO_NAME="Nethunter Minimal"
DISTRO_COMMENT="Rolling Release (2024.2)."

TARBALL_URL['aarch64']="https://kali.download/nethunter-images/kali-2024.2/rootfs/kalifs-arm64-minimal.tar.xz"
TARBALL_SHA256['aarch64']="d944a01487486053a453f95cc68a9abd2bdcfa7d5cd906b7d32fa1a387fafd35"
TARBALL_URL['arm']="https://kali.download/nethunter-images/kali-2024.2/rootfs/kalifs-armhf-minimal.tar.xz"
TARBALL_SHA256['arm']="417cb179cc84a2c8a9d083100d45f16a087f74d6fa8dabaa43ab5eb4880275a7"
TARBALL_URL['i686']="https://kali.download/nethunter-images/kali-2024.2/rootfs/kalifs-i386-minimal.tar.xz"
TARBALL_SHA256['i686']="aa1aa59ac54c9d1f331a274a2b7b559b7e1a4cfc03b1477d4c2970696b51933a"
TARBALL_URL['x86_64']="https://kali.download/nethunter-images/kali-2024.2/rootfs/kalifs-amd64-minimal.tar.xz"
TARBALL_SHA256['x86_64']="60429b0dc324661abaf7249e98701124178f0b8d7488ee23c3307bbc960ae65b"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root

	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
