FROM debian

LABEL maintainer="git@ashleypoole.co.uk"
LABEL description="This is a Debian based Linux image containing Cloudflare Argo Tunnel"

WORKDIR /cloudflare

ADD https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz .
RUN tar xzf *.tgz

ENTRYPOINT ["/cloudflare/cloudflared", "tunnel"]