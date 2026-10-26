#!/bin/bash

set -e

version=$1

if [ -z $version ]; then echo No version was supplied. && exit 1; fi

docker build -t ghcr.io/netbeheernederland/build-doc:upcoming -t ghcr.io/netbeheernederland/build-doc:latest -t ghcr.io/netbeheernederland/build-doc:$version .

docker push ghcr.io/netbeheernederland/build-doc:upcoming
docker push ghcr.io/netbeheernederland/build-doc:latest
docker push ghcr.io/netbeheernederland/build-doc:$version
