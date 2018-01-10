# Dockerized-Cloudflare-Warp
Dockerized version of Cloudflare Warp. 

 2018/01/10 - Linux image only are current bugs in Warp prevents it being run in a Windows based container.


## How to consume the Cloudflare Warp image
An example of how to consume the image can be found in the `LinuxConsumerExample` folder, where you will find an example Dockerfile. If you wish to reuse the example, simply update `cert.pem` with your certificate you've generate via Cloudflare Warp login command or web interface. Then update `config.yml` with the `hostname` and `url` values that you want to use.

Then simply build the image using `Build-ConsumerImage.Linux.ps1` or just the Docker command within that `ps1` script. I'd suggest setting the `FriendlyDomainName` variable which is used to tag the image, to the zone name being used for Cloudflare but with dashes (`-`) used as a subsition for fullstops/periods (`.`). For example, if the zone name `example.com` then I'd suggest you use `example-com`.
