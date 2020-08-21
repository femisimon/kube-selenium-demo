#!/bin/bash
kubectl delete deployment selenium-hub
kubectl delete svc selenium-srv
kubectl delete replicationcontroller selenium-chrome