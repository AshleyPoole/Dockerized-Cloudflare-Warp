ARG CF_WARP_DOWNLOAD_URL
ARG NANO_SOURCE_TAG

# FROM microsoft/windowsservercore:${NANO_SOURCE_TAG}
FROM microsoft/windowsservercore:latest

SHELL ["powershell", "-command"]

LABEL maintainer="git@ashleypoole.co.uk"
LABEL description="This image is contains the Cloudflare Warp Windows executable"

RUN mkdir tunnels

#ADD $CF_WARP_DOWNLOAD_URL cloudflare-wrap.zip
#ADD https://bin.equinox.io/c/2ovkwS9YHaP/warp-stable-windows-amd64.zip cloudflare-wrap.zip

# RUN [System.IO.Compression.ZipFile]::ExtractToDirectory(\"cloudflare-wrap.zip\", \"cloudflare-warp\")

# RUN Remove-Item cloudflare-warp.zip

WORKDIR /cloudflare-warp

COPY cloudflare-warp.exe .

# ENTRYPOINT ["cloudflare-warp", "--config tunnels/cloudflare-warp.yml"]