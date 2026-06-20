@echo off
kubectl apply -f .\projects\monitor-project.yaml
kubectl apply -f .\applications\monitor-app.yaml
