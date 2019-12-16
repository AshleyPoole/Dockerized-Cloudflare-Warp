ARG NANO_SOURCE_TAG

FROM ashleypoole/cloudflare-warp:${NANO_SOURCE_TAG}

LABEL maintainer="git@ashleypoole.co.uk"
LABEL description="This image is an example of how to consume the Cloudflare Warp Windows image"

COPY cloudflare-warp.pem tunnels/cloudflare-warp.pem
COPY cloudflare-warp.yml tunnels/cloudflare-warp.yml