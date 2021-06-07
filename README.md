# kubernetes-hello-secret 🕵🏻‍♂️

Slight variation of the [sample Hello App][hello-app-repository].

It deploys an `hello-app` deployment in the `hello` namespace that mounts a `hello-secrets` secret value on the `SECRET` environment variable.

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-app
  namespace: hello
  labels:
    app: hello
spec:
  selector:
    matchLabels:
      app: hello
  template:
    metadata:
      labels:
        app: hello
    spec:
      containers:
      - name: hello-app
        image: ghcr.io/nikever/kubernetes-hello-secret:latest
        ports:
        - containerPort: 8080
        resources:
          requests:
            cpu: 20m
        env:
        - name: SECRET
          valueFrom:
            secretKeyRef:
              name: hello-secret
              key: secret
```

The `ghcr.io/nikever/kubernetes-hello-secret:latest` contains a containerized Go web server application that responds to all HTTP requests with the value of the `SECRET` environment variable.

```bash
Hello, secret!
Secret: <VALUE>
```

The source code is available [here](./main.go)

## Tools

- kustomize `>= 3.6`

## Deploy the app

1. Build the manifests and apply:

```bash
cd manifest
kustomize build . | kubectl apply -f -
```

<<<<<<< HEAD
2. Verify that the ingress controller is directing traffic:

```bash
curl -H "Host: hello-secret.info" $(minikube ip)
```

## References

- [Hello App repository][hello-app-repository]

[hello-app-repository]: https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/tree/master/hello-app
=======
## Credits

- https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/tree/master/hello-app
- https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
>>>>>>> 929e067 (Move Dockerfile to docker folder)
