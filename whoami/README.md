# whoami

An helm chart to deploy [traefik/whoami](https://hub.docker.com/r/traefik/whoami)

## Usage

```bash
kubectl create namespace whoami
helm -n whoami upgrade --install whoami oci://ghcr.io/mborne/helm-charts/whoami
```
