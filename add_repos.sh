#!/bin/bash

# YAML file path
yaml_file="test/values.yaml"

# Prompt for ArgoCD user
read -p "Enter ArgoCD user: " argocd_username
echo

# Prompt for ArgoCD password
read -s -p "Enter ArgoCD password: " argocd_password
echo

# Read repositories from YAML file
repos=($(yq eval '.services[].repository' "$yaml_file" | sed 's/^"\(.*\)"$/\1/'))

# Loop through each repository and add it to ArgoCD
for repo_url in "${repos[@]}"; do
  # Extract repository name from the URL
  repo_name=$(basename "$repo_url" .git)

  # Run argocd repo add command
  argocd repo add --name "$repo_name" "$repo_url" --username "$argocd_username" --password "$argocd_password"

  # Print a separator for better readability
  echo "----------------------------------------"
done

argocd repo add --name wib-customer https://github.com/wib-com/wib-customer.git --username "$argocd_username" --password "$argocd_password"

