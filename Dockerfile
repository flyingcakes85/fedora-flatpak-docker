FROM registry.fedoraproject.org/fedora:latest

VOLUME /build
WORKDIR /build

RUN dnf -y update && \
    dnf install -y flatpak python3-gobject python3-requests python3-aiohttp ostree ostree-libs git flatpak-builder python-ruamel-yaml python-gobject && \
    dnf clean all

RUN flatpak remote-add --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
