# /bin/sh

helmfile destroy
kubectl delete pvc --all
helmfile apply
kubectl port-forward svc/microservices-items 3001:3000 &
kubectl port-forward svc/postgres-release-postgresql 5433:5432 &

