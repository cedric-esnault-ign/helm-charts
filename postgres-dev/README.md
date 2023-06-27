# postgres-dev

A helm chart to deploy PostgreSQL in DEV mode.

## Motivation

* Allow switching from official image (PostgreSQL) to derivative (ex : [postgis/postgis](https://registry.hub.docker.com/r/postgis/postgis/tags))
* Generate password (once) at installation
* Provide variables with standard names :
  * A ConfigMap with PGHOST, PGPORT and PGDATABASE=postgres (`${release_name}-postgres-dev-config`)
  * A Secret with PGUSER=postgres, PGPASSWORD (`${release_name}-postgres-dev-user`)

## Usage

To deploy a PostgreSQL service named "gis-postgres-dev" :

```bash
# To use postgis/postgis:15-3.3
helm upgrade --install gis oci://ghcr.io/mborne/helm-charts/postgres-dev \
  --set image.repository=postgis/postgis --set image.tag=15-3.3

# Follow displayed instruction...
```

See also [docs/postgis-integration.yml](docs/postgis-integration.yml) to inject psql configuration (PGHOST, PGPORT, PGUSER, PGPASSWORD) using generated ConfigMap (gis-postgres-dev-config) and Secret (gis-postgres-dev-user).

## Testing

See [templates/tests/test-connection.yaml](templates/tests/test-connection.yaml) :

```bash
helm test gis --logs
```

## Resources

* [blog.cloudcover.ch - Reusing Existing Kubernetes Secrets in Helm Templates](https://blog.cloudcover.ch/posts/reusing-existing-kubernetes-secrets-in-helm-templates/)



