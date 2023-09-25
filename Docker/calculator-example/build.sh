#!/bin/bash
docker image build -t asminmhj/devops:v$BUILD_NUMBER .
docker push asminmhj/devops:v$BUILD_NUMBER
docker container run -itd --name app1 -p 8000:8000 asminmhj/devops:v$BUILD_NUMBER
docker container ps
