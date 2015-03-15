
0.16.0 / 2015-03-15
==================

  * added load-balancer copy-conf and reload.


0.15.0 / 2015-02-26
==================

  * add load-balancer tail function
  * clean old docker images after deploying
  * removed subdomain from Strict-Transport-Security

0.14.0 / 2015-02-22
==================

  * updated nginx template to match nginx-proxy
  * updated docker-gen version to 0.3.7

0.13.0 / 2015-02-11
==================

  * fixed copy on create help
  * added option to skip site check


0.12.0 / 2015-02-11
==================

  * pass in port when doing a check

0.11.0 / 2014-12-10 
==================

  * upped checks to 60
  * fetch - exit 1 if max attempts
  * deploy - run check after all containers start
  * check - added max number of attempts
  * updated deploy to use check
  * added check command to check if a container returns a response from curl

0.10.0 / 2014-12-07 
==================

  * update load balancer on start
  * fixed running when not passing in name
  * set max body size to 5m

0.9.1 / 2014-12-02 
==================

  * don't name docker-gen instance - it gets deleted anyways
  * log message when updating load balancer config

0.9.0 / 2014-12-02 
==================

  * manually update nginx template after deploy

0.8.1 / 2014-12-01 
==================

  * fixed remove and running to get only exact matches

0.8.0 / 2014-12-01 
==================

  * added remove command

0.7.0 / 2014-11-10 
==================

  * updated running to use an argument for name
  * pull deps on setup
  * ssl support
  * added support for port on shipment-create
  * fixed update command
  * fixed shipment build

0.6.0 / 2014-10-25 
==================

  * setup and start command
  * refactored into smaller modules, create command sets options once
  * added readme
  * split up nginx and docker-gen containers
  * updated to use nginx-proxy instead of hipache

0.5.2 / 2014-10-13 
==================

  * allow bind and unbind to take p arg

0.5.1 / 2014-10-13 
==================

  * pass port to bind and unbind

0.5.0 / 2014-10-13 
==================

  * updated unbind to pass in options, added support for named unbinding
  * changed bind to pass in options, able to bind by name
  * logs description
  * logs runnable
  * fixed stop usage
  * stop containers by app name
  * tweaked log location for load-balancer

0.4.0 / 2014-10-04 
==================

  * on bootstrap, install docker and start load-balancer
  * added logs command
  * separate out redis to run as own container, use firstandthird/hipache

0.3.0 / 2014-09-17 
==================

  * stop: arg parsing, allow stopping all by host

0.2.0 / 2014-09-17 
==================

  * give container 5 seconds to start up before adding to load balancer
  * get running containers by host url rather than by name
  * fixed updating git repo

0.1.0 / 2014-09-15 
==================

  * deploy - added scale argument to run multiple containers
  * added load balancer restart command
  * moved redis command inside load-balancer
  * bind - check if valid container id before adding
  * fixed dockerargs issue

0.0.4 / 2014-09-07 
==================

  * updated makefile
  * update load balancer container name
  * hipache config
  * updated setup script to copy hipache config
  * updated load-balancer command
  * added descriptions to run and stop
  * added run and stop commands
  * fixed running
  * refactored into separate commands
  * use log on update command

0.0.3 / 2014-09-03 
==================

  * fixed update command

0.0.2 / 2014-09-03 
==================

  * sleep 5 when running container
  * fixed typo

0.0.1 / 2014-09-03 
==================

  * updated readme to use shipment
  * prevent multiple deployments
  * renamed to shipment, refactored into functions
  * update to just use set -e
  * fixed update command
  * added pipefail
  * missed a sudo
  * updated bootstrap script to install git, make and curl
  * basic readme
  * added bootstrap script
  * initial commit
