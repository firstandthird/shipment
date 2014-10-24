# shipment

`shipment` is a set of simple bash scripts that handles deployment to your servers. It uses docker to build your apps into containers and uses nginx and docker-gen to load balance incoming traffic.

## Install

```
curl https://raw.githubusercontent.com/firstandthird/shipment/master/bootstrap | sudo bash
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
shipment create [name] [repo]
```

---

### Deploy

Fetches latest code from the repo, builds the docker container, runs the container and adds to nginx.

##### Usage:
```
shipment deploy [options] [name]
```

##### Options:
```
    -u <url>             host url
    -b <branch>          branch [default: master]
    -p <port>            port [default: 5000]
    -s <num>             number of containers to run [default: 1]
    -d <args>            arguments to pass to docker, make sure to double quote
```

##### Shipment.conf

You can also set these values in a `shipment.conf` that lives in your repo.  Options passed into the command take precedence over these.

```
SHIPMENT_BRANCH=master
SHIPMENT_URL="app.domain.com"
SHIPMENT_DOCKERARGS="--env NODE_ENV=production --link mongo:mongo"
SHIPMENT_PORT="5000"
```

---

### Start
### Stop
### Logs
### Update
