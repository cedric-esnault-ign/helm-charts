# helm-charts

[DEV] Some helm charts written to test OCI registry publishing.

## Charts

* [whoami](whoami/README.md)
* [postgres-dev](postgres-dev/README.md) (DEPRECATED)

## Notes about publishing

See [publish.sh](publish.sh) :

```bash
# login to github container registry
docker login ghcr.io
bash publish.sh whoami
```

## LICENSE

[MIT](LICENSE)

## Ressources

* [helm.sh - Use OCI-based registries](https://helm.sh/docs/topics/registries/)


