#/bin/bash

helm upgrade dova ../charts/dova-framework \
--values ../envs/develop/architecture.values.yaml \
--values ../envs/develop/auth.values.yaml \
--values ../envs/develop/image.values.yaml \
--values ../envs/develop/ingress.values.yaml \
--values ../envs/develop/metrics.values.yaml \
--values ../envs/develop/resources.values.yaml \
--install
