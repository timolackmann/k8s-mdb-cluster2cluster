# MongoDB Cluster-to-Cluster Sync on K8s

This repository contains the required files to create a container and deploy on Kubernetes.
**This is a private repository and is not officially supported by MongoDB**

# How to use

1. Run `docker build .` within the [docker](docker) directory
2. Use `docker push` to push the image to your preferred container registry
3. Replace the placeholders `image-location` and `mongodb URI` within _cluster2cluster.yaml_
4. Run `kubectl apply -f cluster2cluster.yaml`

This deployment will expose the mongosync APIs on port 27182.
Learn more about MongoDB Cluster-to-Cluster Sync here: https://www.mongodb.com/docs/cluster-to-cluster-sync/current/
