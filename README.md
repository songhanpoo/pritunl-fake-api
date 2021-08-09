
## Badges

Add badges from somewhere like: [shields.io](https://shields.io/)

[![Heroku CI Status](https://pritunl-pipeline.herokuapp.com/last.svg)](https://dashboard.heroku.com/pipelines/d7c91e75-e6b2-4219-a61d-075dff112632/tests)
  
# Pritunl fake api

This neat script provides a little fake API to unlock all premium/enterprise/enterprise+ (here called ultimate) features of your own Pritunl VPN server. If Pritunl wouldn't be mostly free already, you could call this a crack. An Open Source crack.

## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`APP_NAME`

`APP_VER`

  
## Build

To build this project run

```bash
  git clone https://github.com/songhanpoo/pritunl-fake-api.git
```

```bash
  docker build -t <image>:<tag> -f build/Dockerfile
```

To run bundle project with mongo

```bash
  docker-compose up -f build/docker-compose.yml -d
```

## Authors

- [@songhanpoo](https://www.github.com/songhanpoo)

  
## Demo

Insert gif or link to demo

![dashboard](https://github.com/songhanpoo/pritunl-fake-api/dashboard.png)
![subscription](https://github.com/songhanpoo/pritunl-fake-api/subscription.png)
## Features

### Premium
- Single server
- Unlimited users
- Unlimited devices
- Port forwarding
- Gateway links
- Failover gateway links
- Bypass secondary auth
- Chromebook support
- Configuration sync
- Email user keys
- Additional themes

### Enterprise
- All Premium Features
- Unlimited servers
- Single sign-on ( Tested with AD - Active Directory ( Win srv 2016 ) )
- Automatic failover
- Replicated servers
- VXLan support
- AWS VPC intergration
- Site-to-site VPN
- Server route NAT control
- DNS mapping
- DNS forwarding
- Monitoring
- Advanced auditing
- Bridge VPN Mode
- Multiple administrators
- User pin policy
- Plugin system
- API access
- IPsec site-to-site links
- Multi-Cloud VPC peering
- Automated link failover



  
## Fork by 

https://github.com/Simonmicro/Pritunl-Fake-API.git


  