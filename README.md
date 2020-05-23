# Monitoring Demo

The simple demo example of Prometheus + Grafana + Nginx demo in the Kubernetes cluster.

This demo was used with GCP Kubernetes cluster.
As a demo dashboard was used [official nginx dashboard](https://github.com/nginxinc/nginx-prometheus-exporter/tree/master/grafana).

# Dependencies

* **gcloud** ([installation guide is here](https://cloud.google.com/sdk/docs/quickstarts/))
* **kubectl** ([installation guide is here](https://kubernetes.io/docs/tasks/tools/install-kubectl/))

# Setup cluster
To start using gcloud utility execute next command
```sh
gcloud init
```

Execute the next command to sign in
```sh
gcloud auth login
```

Select your GCP project (if you have one) or create a new one (you can do it via GCP Web Interface)
```sh
gcloud projects list
gcloud config set project <YOUR_PROJECT_ID>
```

**Finally, we can setup demo cluster**
```sh
gcloud container clusters create demo-cluster --zone europe-west4-a
```

***kubectl** will be automatically configured to your created cluster*

You can check your demo-cluster status with next command
```sh
kubectl get nodes
```

# Usage

1) Clone this git repository
```sh
git clone https://github.com/ltblueberry/monitoring-demo
```
2) Execute **install.sh** script
```sh
./install.sh
```
3) Execute **get-urls.sh** script to get all services URLs.
```sh
./get-urls.sh
```
Now you can check it all with web-browser


# Uninstall
1) Execute **uninstall.sh** script
```sh
./uninstall.sh
```

## License

**[MIT License](LICENSE)**

Copyright (c) 2020 [ltblueberry](https://github.com/ltblueberry)