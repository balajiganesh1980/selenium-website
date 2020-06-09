#!/bin/sh

sudo docker build ./mysql/ -t db
sudo docker run -it -d -p 3307:3307 --name mysql db

sudo docker build ./website/ -t web
sudo docker run -it -d -p 3001:3001 --link mysql:db web
