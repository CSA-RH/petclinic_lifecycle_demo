# For using Sealed Secrets, a helm chart with the operator and kubeseal has to be installed. 
# More information at https://github.com/bitnami-labs/sealed-secrets
# Install helm chart
helm repo add sealed-secrets https://bitnami-labs.github.io/sealed-secrets
helm install sealed-secrets -n kube-system --set-string fullnameOverride=sealed-secrets-controller sealed-secrets/sealed-secrets
# Install kubeseal


export MYSQL_ADMIN_PASSWORD=petclinic
export MYSQL_PASSWORD=petclinic
oc create secret generic mysecret --dry-run=client -oyaml \
    --from-literal mysql-password=$MYSQL_PASSWORD \
    --from-literal mysql-admin-password=$MYSQL_ADMIN_PASSWORD \
    | kubeseal --scope cluster-wide \
    | yq -p=json - \
    > 04_sealedsecrets.yaml