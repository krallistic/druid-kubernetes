#!/usr/bin/env bash


TAG="latest"
docker build -t jkaralus/druid8s-base:$TAG base
docker build -t jkaralus/druid8s-mysql-utf metadata-mysql
docker build -t jkaralus/druid8s-quickstart:$TAG quickstart
docker build -t jkaralus/druid8s-local-zk:$TAG local-zk
docker build -t jkaralus/druid8s-coordinator:$TAG coordinator
docker build -t jkaralus/druid8s-overlord:$TAG overlord
docker build -t jkaralus/druid8s-middlemanager:$TAG middleManager
docker build -t jkaralus/druid8s-historical:$TAG historical
docker build -t jkaralus/druid8s-broker:$TAG broker
docker build -t jkaralus/druid8s-pivot:$TAG pivot
docker build -t jkaralus/druid8s-tranquility:$TAG tranquility