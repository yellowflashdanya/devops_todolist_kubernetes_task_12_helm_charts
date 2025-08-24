#!/bin/bash
set -e

kubectl apply -f .infrastructure/security/ns.yml

helm dependency update ./helm-chart/todoapp
helm upgrade --install todoapp ./helm-chart/todoapp -n todoapp --create-namespace

kubectl get pods -n todoapp
