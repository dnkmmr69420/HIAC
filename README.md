# HIAC
Highly Integrated Alpine Container

## Getting started

### Make a alpine linux container

```bash
distrobox create -i alpine:latest -n container-name -p
```

### Enter the container

```bash
distrobox enter container-name
```

### Run the script

```bash
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/HIAC/main/setup.sh)
```
