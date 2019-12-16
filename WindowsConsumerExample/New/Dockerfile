ARG NANO_SOURCE_TAG
ARG CF_WARP_DOWNLOAD_URL

FROM microsoft/nanoserver:${NANO_SOURCE_TAG}

LABEL maintainer="git@ashleypoole.co.uk"
LABEL description="This image is contains the Cloudflare Warp Windows executable"

RUN mkdir tunnels

WORKDIR /cloudflare-warp

ADD $CF_WARP_DOWNLOAD_URL .

ENTRYPOINT ["cloudflare-warp", "--config tunnels/cloudflare-warp.yml"]