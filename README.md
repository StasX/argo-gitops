# Argo GitOps

This repository contains the **GitOps configuration** for deploying the **AWS Monitor** application to Kubernetes using **Argo CD**.

It serves as the single source of truth for the Kubernetes manifests that define each deployment environment. Argo CD continuously monitors this repository and synchronizes the Kubernetes cluster with the desired state stored in Git.

---

## Overview

The deployment workflow follows GitOps best practices:

1. Developers push application code.
2. The CI/CD pipeline builds and publishes a new Docker image.
3. The pipeline updates the Kubernetes manifests in this repository.
4. Changes are committed and pushed to Git.
5. Argo CD detects the changes.
6. Kubernetes is automatically synchronized with the updated manifests.

---

## Repository Structure

```
argo-gitops/
├── .github/
│   └── workflows/              # GitHub Actions workflows
├── aws-monitor/                # Argo CD Application environments values 
├── config/                     # Argo CD / ApplicationSet configuration and projects / applications / application sets / installation
└── manifests/
    └── aws-monitor/
        ├── dev/
        ├── qa/
        └── prod/
```

---

## Environments

The repository manages three deployment environments:

| Environment     | Purpose                                   |
| --------------- | ----------------------------------------- |
| **Development** | Development                               |
| **QA**          | Quality assurance, testing and validation |
| **Production**  | Live production deployment                |

Each environment contains its own Kubernetes manifests generated from the Helm chart.

---

## GitOps Workflow

```text
Developer
    │
    ▼
GitHub Repository
    │
    ▼
CI/CD Pipeline (Jenkins / GitHub Actions)
    │
    ├── Build Docker Image
    ├── Push Image to Docker Hub
    ├── Generate Kubernetes Manifests
    └── Update This Repository
               │
               ▼
        Argo CD detects changes
               │
               ▼
      Synchronize Kubernetes Cluster
               │
               ▼
          Application Updated
```

---

## Features

* GitOps-based Kubernetes deployments
* Multi-environment configuration
* Automated synchronization with Argo CD
* Environment-specific manifests
* Deployment history stored in Git
* Continuous delivery using Jenkins or GitHub Actions

---


---

## GitOps Principles

This repository follows the GitOps model:

* Git is the single source of truth.
* Every deployment is version controlled.
* Changes are automatically synchronized to Kubernetes.
* Infrastructure and application state remain consistent across environments.
* Rollbacks are performed by reverting Git commits.


