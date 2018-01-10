FROM ashleypoole/cloudflare-warp:latest

LABEL maintainer="git@ashleypoole.co.uk"
LABEL description="This image is an example of how to consume the Cloudflare Warp Linux image"

COPY cert.pem /cloudflare-warp/tunnels/cert.pem
COPY config.yml /cloudflare-warp/tunnels/config.yml

# Working around a Warp bug but copying cert into default location
# as it's not reading the orgincert option from yml config file correctly
COPY cert.pem /root/.cloudflare-warp/cert.pem
