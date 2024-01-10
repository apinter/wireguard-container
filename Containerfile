FROM registry.opensuse.org/opensuse/tumbleweed

RUN zypper ref && zypper dup -y
RUN zypper in -y wireguard-tools 

CMD ["wg-quick", "up", "wg0"]
