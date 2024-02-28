# Sample GitOps Workflow with ArgoCD

## Prerequisites

- Docker
- Kubectl
- Helm
- ArgoCD CLI
- Kubernetes cluster

## Getting Started

- Install Argo CD on your Kubernetes cluster

```bash
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
