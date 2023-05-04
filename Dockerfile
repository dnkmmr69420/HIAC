FROM quay.io/toolbx-images/alpine-toolbox:edge

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A very highly intergrated distrobox or toolbox container" \
      maintainer="dnkmmr69420"
      
RUN   apk update && \
      apk upgrade && \
      apk add xz gcompat

RUN   ln -sf /run/host/etc/os-release /etc/os-release

RUN   ln -sf /bin/sh /usr/bin/sh && \
      ln -sf /bin/bash /usr/bin/bash

RUN   ln -sf /usr/bin/distrobox-host-exec /usr/bin/flatpak && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/rpm && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/dpkg && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/pacman && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/xbps-querry && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/emerge && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/eopkg && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/snap && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/distrobox && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/podman && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/docker && \
      ln -sf /usr/bin/distrobox-host-exec /usr/bin/rpm-ostree
