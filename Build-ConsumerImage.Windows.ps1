param(
	[Parameter(Mandatory=$true)]
	[string]$FriendlyDomainName,
	[Switch]$1709 = $false
)

$ImageTag = "sac2016"

if ($1709)
{
	$ImageTag = "1709"
}

docker build -t "cloudflare-warp-${FriendlyDomainName}:${ImageTag}" -f WindowsConsumerExample/Dockerfile --build-arg NANO_SOURCE_TAG=$ImageTag WindowsConsumerExample/.