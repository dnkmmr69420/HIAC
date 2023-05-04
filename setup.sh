#!/bin/bash
echo "Setting up container"
sudo ln -s /bin/sh /usr/bin/sh
sudo ln -s /bin/bash /usr/bin/bash
sudo ln -s /run/host /hstsys
sudo rm -f /etc/os-release
sudo ln -s /run/host/etc/os-release /etc/os-release
sudo apk add gcompat xz
[ -f /run/host/usr/bin/flatpak ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/flatpak
[ -f /run/host/usr/bin/rpm ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/rpm
[ -f /run/host/usr/bin/dpkg ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/dpkg
[ -f /run/host/usr/bin/pacman ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/pacman
[ -f /run/host/usr/bin/xbps-querry ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/xbps-querry
[ -f /run/host/usr/bin/emerge ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/emerge
[ -f /run/host/usr/bin/eopkg ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/eopkg
[ -f /run/host/usr/bin/snap ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/snap
sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/distrobox
[ -f /run/host/usr/bin/podman ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/podman
[ -f /run/host/usr/bin/docker ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/docker
[ -f /run/host/usr/bin/transactional-update ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/transactional-update
[ -f /run/host/usr/bin/rpm-ostree ] && sudo ln -s /usr/bin/distrobox-host-exec /usr/bin/rpm-ostree
