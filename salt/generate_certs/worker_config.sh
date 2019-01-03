worker_ip=$1

kubectl config set-cluster kubernetes-the-hard-way \
    --certificate-authority=ca.pem \
    --embed-certs=true \
    --server=https://$worker_ip:6443 \
    --kubeconfig=worker1.kubeconfig

  kubectl config set-credentials system:node:worker1 \
    --client-certificate=worker1.pem \
    --client-key=worker1-key.pem \
    --embed-certs=true \
    --kubeconfig=worker1.kubeconfig

  kubectl config set-context default \
    --cluster=kubernetes-the-hard-way \
    --user=system:node:worker1 \
    --kubeconfig=worker1.kubeconfig

  kubectl config use-context default --kubeconfig=worker1.kubeconfig
