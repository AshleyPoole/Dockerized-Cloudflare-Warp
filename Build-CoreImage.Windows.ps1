param(
	[Switch]$1709 = $false
)

$CloudflareWarpDownloadUrl = "https://bin.equinox.io/c/2ovkwS9YHaP/warp-stable-windows-amd64.zip"

$ImageTag = "sac2016"

if ($1709)
{
	$ImageTag = "1709"
}

Push-Location Windows

docker build -t "ashleypoole/cloudflare-warp:$ImageTag" -f Dockerfile --build-arg CF_WARP_DOWNLOAD_URL="$CloudflareWarpDownloadUrl" --build-arg NANO_SOURCE_TAG=$ImageTag .

Pop-Location