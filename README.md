# HIAC
Highly Integrated Alpine Container

## Getting started

### Make a alpine linux container

replace `hiac-container` with a name you want to name your container

```bash
distrobox create -i alpine:latest -n hiac-container -p
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

## Optional steps

Run this for [adw-gtk3](https://github.com/lassekongo83/adw-gtk3) to be installed for the container

```bash
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/HIAC/main/install-adw-gtk3.sh)
```
