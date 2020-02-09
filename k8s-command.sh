> minikube start
> minikube status

# check the ip that minikube assigned to the vm
> minikube ip

# open minikube dashboard
> minikube dashboard

> kubectl cluster-info

# Feed a config file to Kubectl
# apply: change the current configuration of our cluster
> kubectl apply -f <config file>
# apply all files in dir
> kubectl apply -f <dir_name>

# Print the status of all runnig pods
# get: We want to retriee about a running object
# pods: specifies the object type taht we want to get info about
# -o wide also get the ip of that pods
> kubectl get <object_type>
> kubectl get pods (-o wide)
> kubectl get services
> kubectl get deployments
# persistent volume
> kubectl get pv
# persistent volume claim
> kubectl get pvc

# Get detailed info about an object
> kubectl describe <object type> (<object name>)

# Remove an object
# This is an imperative update
> kubectl delete -f <config file>
> kubectl delete <object_type> <object_name>

# setting image of a object imperatively
> kubectl set image <object_type>/<object_name> <container_name>=<new_image_name>
> kubectl set image deployment/client-deployment client=chauyiu1994/multi-client:v5

# Configure the docker-cli to connect to the docker server inside the k8s VM (only current terminal window)
# eval is to commandize the outpout of minkube docker-env
> eval $(minikube docker-env)

# get from pods
> kubectl logs <pods_name>
> kubectl logs client-deployment-7458495c6-5925h

# sh into pods
> kubectl exec -it <pods_name> sh
> kubectl exec -it client-deployment-7458495c6-5925h sh

# storage class can vary on cloud provider
> kubectl get storageclass
> kubectl describe storageclass

# imperative cmd to create a new object
> kubectl create <object_kind> <object_type> <object_name> --from-literal   <key-value-pairs>
> kubectl create secret (generic / docker-regstry / tls) <secret_name> --from-literal <key_value_pairs of the secret info>
> kubectl create secret generic pgpassword --from-literal PGPASSWORD=12345asdf

# setting up ingress-ningx
> kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.28.0/deploy/static/mandatory.yaml