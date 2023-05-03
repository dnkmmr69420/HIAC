FROM quay.io/toolbx-images/alpine-toolbox:edge

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A very highly intergrated distrobox or toolbox container" \
      maintainer="dnkmmr69420"
      
RUN   apk update ; \
      apk upgrade ; \
      apk add xz gcompat
