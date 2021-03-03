#!/bin/bash

# Jekyll runs as Apache
docker run -it --rm --name run-jekyll \
  -v $PWD:/srv/jekyll:rw,slave,Z \
  -e JEKYLL_UID=1000 \
  -e JEKYLL_GID=1000 \
  docker.io/jekyll/jekyll:3.8.5 \
  -- bash 

