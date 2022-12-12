#!/bin/bash
mongosync --cluster0 $SOURCECLUSTER --cluster1 $TARGETCLUSTER
curl localhost:27182/api/v1/start -XPOST \
--data '
   {
      "source": "cluster0",
      "destination": "cluster1"
   } '