# helm-charts

[DEV] Some helm charts to test deployments and OCI registry publishing

## Charts

* [whoami](whoami/README.md)

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


