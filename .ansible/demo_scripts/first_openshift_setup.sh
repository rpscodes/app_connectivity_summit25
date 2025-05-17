#!/bin/bash

oc apply -f https://raw.githubusercontent.com/rpscodes/app_connectivity_summit25/refs/heads/main/.ansible/demo_scripts/openshift_site.yaml
sleep 50

oc apply -f https://raw.githubusercontent.com/rpscodes/app_connectivity_summit25/refs/heads/main/.ansible/demo_scripts/listener.yaml
sleep 20

oc apply -f https://raw.githubusercontent.com/rpscodes/app_connectivity_summit25/refs/heads/main/.ansible/demo_scripts/grant.yaml
sleep 20


oc label namespace travel-agency istio-injection=enabled --overwrite=true
sleep 30




oc get deployments -n travel-agency -o name \
  | xargs -I{} oc rollout -n travel-agency restart {}
sleep 60



watch oc get pods -n travel-agency

