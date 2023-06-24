# postgres-dev

A helm chart to deploy PostgreSQL in DEV mode.

## Motivation

* [x] Allow switching from official image (PostgreSQL) to derivative (ex : postgis/postgis)
* [ ] Generate password to avoid asking for it like bitnami/postgres
* [ ] Provide variables with standard names :
  * [ ] ConfigMap (PGHOST, PGPORT,...)
  * [ ] Secret (PGUSER, PGPASSWORD)


