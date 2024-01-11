# Demo of DevOps lifecycle for Argo CD. 
Starting with the baseline configuration of a pet clinic (SpringBoot application, located in the 'app' folder with two profiles: http and https), the 'manifest' folder incorporates YAML files that progressively introduce operational enhancements within an OpenShift cluster in a layered manner. Additionally, a Helm template is included, showcasing the seamless integration of the application with ArgoCD for streamlined deployment and management.

More information about ArgoCD secret management: # https://argo-cd.readthedocs.io/en/stable/operator-manual/secret-management/
More information about sealed secrets: https://github.com/bitnami-labs/sealed-secrets
