@echo off
kubectl apply -f .\projects\aws-monitor-project.yaml
kubectl apply -f .\applications\aws-monitor-app.yaml
kubectl apply -f .\applicationsets\aws-monitor.yaml
