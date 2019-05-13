param(
	[Parameter(Mandatory=$true)]
	[string]$FriendlyDomainName
)

docker build -t "cloudflareagrotunnel:${FriendlyDomainName}" -f LinuxConsumerExample/Dockerfile LinuxConsumerExample/.