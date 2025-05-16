oc label namespace travel-agency istio-injection=enabled --overwrite=true


oc get deployments -n travel-agency -o name \
  | xargs -I{} oc rollout -n travel-agency restart {}



