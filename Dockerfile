FROM archlinux/archlinux:base
RUN pacman -Syu fish ropgadget cargo rustup gcc openssl pkgconf python-pip --noconfirm\
    && rustup install stable\
    && cargo install nu\
    && chsh -s /bin/fish\
    && /bin/fish -c "set -U fish_greeting \"\""
COPY . /root
ENTRYPOINT [ "/bin/fish", "-c"]