# shipment

`shipment` is a set of simple bash scripts that handles deployment to your servers. It lets you easily deploy multiple apps to a single (or multiple) servers without any downtime. It uses docker to build your apps into containers and uses nginx and docker-gen to load balance incoming traffic.

## Features

* Zero downtime deployments
* Quick rollbacks
* Easily manage multiple running apps on a single server
* Automatically deploy on a git push with shipment-hook (coming soon)

## Install
```
curl https://raw.githubusercontent.com/firstandthird/shipment/master/install.sh | sudo bash
```

More docs coming soon.

