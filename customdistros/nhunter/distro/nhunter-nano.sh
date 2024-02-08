DISTRO_NAME="Nethunter Nano"
DISTRO_COMMENT="Kali Linux Nano (aarch64 and arm only)"

TARBALL_URL['aarch64']="https://kali.download/nethunter-images/kali-2023.4/rootfs/kalifs-arm64-nano.tar.xz"
TARBALL_SHA256['aarch64']="44e70a16ddf3e94d5a27e209c8d643c556ec674d556fe8dc33fbd63bed220d71"
TARBALL_URL['arm']="https://kali.download/nethunter-images/kali-2023.4/rootfs/kalifs-armhf-nano.tar.xz"
TARBALL_SHA256['arm']="e9a32ff1d1baf50a5060a151821341c997abe4340bebcf8b18af31d1f41a3da3"

distro_setup() {
	# Set default shell to bash.
	run_proot_cmd usermod --shell /bin/bash root
}
