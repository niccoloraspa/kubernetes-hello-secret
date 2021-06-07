# kubernetes-hello-secret 🕵🏻‍♂️

Slight variation of [Hello App][hello-app-repository].

## Tools

- kustomize `>= 3.6`

## Deploy the app

1. Build the manifests and apply:

```bash
cd manifest
kustomize build . | kubectl apply -f -
```

2. Verify that the ingress controller is directing traffic:

```bash
curl -H "Host: hello-secret.info" $(minikube ip)
```

## References

- [Hello App repository][hello-app-repository]

[hello-app-repository]: https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/tree/master/hello-app
