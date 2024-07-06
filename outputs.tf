output "client_certificate" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.client_certificate
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster."
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.main.kube_config_raw
  sensitive   = true
  description = <<-EOT

    The kube_admin_config and kube_config blocks export the following:

    - client_key - Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.
    - client_certificate - Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.
    - cluster_ca_certificate - Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.
    - host - The Kubernetes cluster server host.
    - username - A username used to authenticate to the Kubernetes cluster.
    - password - A password or token used to authenticate to the Kubernetes cluster.

EOT

}



output "kubernetes_cluster_name" {
  value       = azurerm_kubernetes_cluster.main.name
  description = "Name of the Kubernetes Cluster."
}

output "kubernetes_cluster_id" {
  value       = azurerm_kubernetes_cluster.main.id
  description = "ID of the Kubernetes Cluster."
}

output "node_resource_group" {
  value       = azurerm_kubernetes_cluster.main.node_resource_group
  description = "The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created."
}

output "subnet_id" {
  value       = azurerm_subnet.main.id
  description = "The subnet ID."
}

output "node_cidr" {
  value       = azurerm_subnet.main.address_prefixes
  description = "The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster."
}

output "route_table_name" {
  value       = azurerm_route_table.main.name
  description = "The Route Table Name."
}

output "route_table_id" {
  value       = azurerm_route_table.main.id
  description = "The Route Table ID."
}

output "oidc_issuer_url" {
  value       = azurerm_kubernetes_cluster.main.oidc_issuer_url
  description = "The OIDC Issuer URL."
}
