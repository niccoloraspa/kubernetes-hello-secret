# kubernetes-hello-secret 🕵🏻‍♂️

Slight variation of [GCP Hello App](https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/tree/master/hello-app).

## Tools

- kustomize `>= 3.6`

## Create the app

- Create resources:

```bash
kustomize build . | kubectl apply -f -
```

- Add the following line to the bottom of the `/etc/hosts` file:

```bash
<MINIKUBE_IP> hello-secret.info
```

Where `<MINIKUBE_IP>` must be replace with output of `minikube ip`.

- Verify that the Ingress controller is directing traffic:

```bash
curl hello-secret.info
```


## Credits

- https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/tree/master/hello-app

- https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
