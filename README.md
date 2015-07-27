# shipment

`shipment` is a set of simple bash scripts that handles deployment to your servers. It uses docker to build your apps into containers and uses nginx and docker-gen to load balance incoming traffic.

## Install
```
curl https://raw.githubusercontent.com/firstandthird/shipment/master/install.sh | sudo bash
```

## Commands

### Key

Returns a deployment key that you can add to github.

##### Usage:
```
shipment key
```

---

### Create

The create command creates an new app for deployment.

##### Usage:
```
shipment create [options]
```

##### Options:

```
    Required:
    -n <name>            name of app
    -r <repo>            app repo [git://github.com/owner/repo.git]

    Optional:
    -u <url>             host url [domain.com]
    -b <branch>          branch [default: master]
    -d <args>            arguments to pass to docker, make sure to double quote
```

---

### Deploy

Fetches latest code from the repo, builds the docker container, runs the container, adds to nginx and stops older containers.

##### Usage:
```
shipment deploy [name]
```

---

### Start

Starts an app

### Stop

Stops an app

### Fetch

Fetches latest code for app

### Build

Builds docker container for app

### Run

Runs an app

### Scale

Scale up/down an app

### Logs

Display logs for app

### Update

Updates shipment
