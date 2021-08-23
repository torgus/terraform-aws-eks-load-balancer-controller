variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
}

variable "cluster_identity_oidc_issuer" {
  type        = string
  description = "The OIDC Identity issuer for the cluster"
}

variable "cluster_identity_oidc_issuer_arn" {
  type        = string
  description = "The OIDC Identity issuer ARN for the cluster that can be used to associate IAM roles with a service account"
}

variable "helm_chart_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "Helm chart name to be installed"
}

variable "helm_chart_version" {
  type        = string
  default     = "1.2.6"
  description = "Version of the Helm chart"
}

variable "helm_release_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "Helm release name"
}
variable "helm_repo_url" {
  type        = string
  default     = "https://aws.github.io/eks-charts"
  description = "Helm repository"
}

variable "helm_create_namespace" {
  type        = bool
  default     = true
  description = "Create the namespace if it does not yet exist"
}

variable "k8s_namespace" {
  type        = string
  default     = "aws-lb-controller"
  description = "The K8s namespace in which the node-problem-detector service account has been created"
}

variable "k8s_service_account_create" {
  type        = bool
  default     = true
  description = "Whether to create Service Account"
}

variable "k8s_irsa_role_create" {
  type        = bool
  default     = true
  description = "Whether to create IRSA role and annotate service account"
}

variable "k8s_service_account_name" {
  default     = "aws-load-balancer-controller"
  description = "The k8s aws-loab-balancer-controller service account name"
}

variable "settings" {
  type        = map(any)
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://github.com/aws/eks-charts/tree/master/stable/aws-load-balancer-controller"
}

variable "values" {
  type        = string
  default     = ""
  description = "Additional yaml encoded values which will be passed to the Helm chart, see https://github.com/aws/eks-charts/tree/master/stable/aws-load-balancer-controller"
}