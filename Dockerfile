from archlinux/archlinux:base
run pacman -Syu fish ropgadget cargo rustup gcc openssl pkgconf python-pip --noconfirm\
    && rustup install stable\
    && cargo install nu\
    && chsh -s /bin/fish\
    && /bin/fish -c "set -U fish_greeting \"\""
copy . /root
cmd /bin/fish