# HIAC
Highly Integrated Alpine Container

## Getting started

### Make a alpine linux container

replace `hiac-container` with a name you want to name your container

```bash
distrobox create -i alpine:latest -n hiac-container -p
```

Seperated home container if you want to keep dot files and other configs sepearated

```bash
distrobox create -i alpine:latest -n hiac-container -p -H ~/container-home-dir
```

### Enter the container

replace `hiac-container` with the name you used to create the container if you used a different name

```bash
distrobox enter hiac-container
```

### Run the script

```bash
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/HIAC/main/setup.sh)
```

## Some changes this script does

- Adds `uhe` for executing applications as normal user on the host and `rhe` for executing applications as root on the host. It does the same thing as `distrobox-host-exec` but you type less letters

- Creates several symlinks against /usr/bin/distrobox-host-exec for fetch programs to detect host package count

- Installs `gcompat` for glibc support and `xz` for tar.xz support

# Optional steps

## GNOME related

### Adw-gtk3

Run this for [adw-gtk3](https://github.com/lassekongo83/adw-gtk3) to be installed for the container

```bash
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/HIAC/main/install-adw-gtk3.sh)
```

### Clock

#### To set clock to 12h type

```bash
gsettings set org.gnome.desktop.interface clock-format 12h
```

#### for 24h

```bash
gsettings set org.gnome.desktop.interface clock-format 24h
```

## Other

### you need librsvg to run certain applications like tilix

```bash
sudo apk add librsvg
```
### neofetch showing info of host instead of container

This may break the container so only do this if you find it necesarry. Report bugs if you have problems with this so I can make a list of what will cause the container to break.

```bash
sudo mv /etc/os-release /etc/os-release.backup ; sudo ln -s /run/host/etc/os-release /etc/os-release
```
