#!/bin/sh


# Force docker to use the localhost as a docker proxy and "registry" host as an insecure registry.
cat <<EOF > /etc/docker/daemon.json
{
  "registry-mirrors": ["http://localhost:5000"],
  "insecure-registries": ["http://registry:5000"]
}
EOF

# TODO: switch to self-signed X.509 and then further to using our own ca.

