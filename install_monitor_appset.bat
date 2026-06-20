@echo off
kubectl apply -f .\projects\monitor-project.yaml
kubectl apply -f .\applicationsets\monitor.yaml
