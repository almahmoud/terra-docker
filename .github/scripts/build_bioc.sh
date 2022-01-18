#!/bin/bash

cd terra-jupyter-base
docker build . -t almahmoud/terra-jupyter:base

cd ../terra-jupyter-r

echo "FROM almahmoud/terra-jupyter:base" > newdockerfile

cat Dockerfile |tail -n+2>> newdockerfile

docker build . -t almahmoud/terra-jupyter:r -f newdockerfile

cd ../terra-jupyter-bioconductor

echo "FROM almahmoud/terra-jupyter:r" > newdockerfile

cat Dockerfile |tail -n+2>> newdockerfile

docker build . -t almahmoud/terra-jupyter:bioc -f newdockerfile