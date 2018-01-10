param(
	[Parameter(Mandatory=$true)]
	[string]$FriendlyDomainName
)

docker build -t "cloudflare-warp:${FriendlyDomainName}" -f LinuxConsumerExample/Dockerfile LinuxConsumerExample/.