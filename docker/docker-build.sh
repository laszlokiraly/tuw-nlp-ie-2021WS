#!/bin/sh

# 2GB memory will not suffice for stanza, set memory in docker settings to 4GB!
docker build -t nlp/nlp-docker ./
