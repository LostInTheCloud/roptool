from archlinux/archlinux:base
copy . /root
run pacman -Syu fish ropgadget cargo rustup gcc openssl pkgconf python-pip --noconfirm
run chsh -s /bin/fish
run rustup install stable
run cargo install nu