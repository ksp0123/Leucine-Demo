apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${base64encode(var.cluster_ca_certificate)}
    server: ${module.eks.cluster_endpoint}
  name: ${module.eks.cluster_name}
contexts:
- context:
    cluster: ${module.eks.cluster_name}
    user: ${module.eks.cluster_name}
  name: ${module.eks.cluster_name}
current-context: ${module.eks.cluster_name}
kind: Config
preferences: {}
users:
- name: ${module.eks.cluster_name}
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1alpha1
      args:
      - "eks"
      - "get-token"
      - "--cluster-name"
      - ${module.eks.cluster_name}
      command: aws
