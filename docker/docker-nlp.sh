#!/bin/sh

PROJECT_NAME="nlp-docker"

# have to pip install inside running notebook when using this generic image
# 2GB memory will not suffice for stanza, set memory in docker settings to 4GB!
# DOCKER_IMAGE="jupyter/scipy-notebook:notebook-6.4.3"

# run docker-build.sh before using this image
# no need to pip install inside the notebooks with this image
DOCKER_IMAGE="nlp/nlp-docker"

docker run --rm -it --name $PROJECT_NAME \
    -v $PWD:/mnt/project \
    -p 8888:8888 \
    $DOCKER_IMAGE jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root /mnt/project/

# one error occured in one of the notebook: 'LazyCorpusLoader' object is not iterable
