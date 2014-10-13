
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
