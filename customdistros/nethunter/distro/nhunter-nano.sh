DISTRO_NAME="Nethunter Nano"
DISTRO_COMMENT="Rolling Release (2024.2). (AArch64 and ARM only.)"

TARBALL_URL['aarch64']="https://kali.download/nethunter-images/kali-2024.2/rootfs/kalifs-arm64-nano.tar.xz"
TARBALL_SHA256['aarch64']="ad87f4c538a08a48667b95ead19f51dd109fdaa2d4ba753464b0a3018e3e4420"
TARBALL_URL['arm']="https://kali.download/nethunter-images/kali-2024.2/rootfs/kalifs-armhf-nano.tar.xz"
TARBALL_SHA256['arm']="acba1930a330cedaac8fea4f329d807b6d1aa3ae7b3b9930e94423724c904e23"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root

	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
