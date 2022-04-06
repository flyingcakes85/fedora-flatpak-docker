FROM registry.fedoraproject.org/fedora:latest

VOLUME /build
WORKDIR /build

RUN dnf -y update && \
    dnf install -y flatpak python3-gobject python3-requests python3-aiohttp ostree ostree-libs git flatpak-builder && \
    dnf clean all
