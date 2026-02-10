// values.cue - Default configuration
values: {
  // Dynamic deployment name (default)
  deploymentName: "my-app-deployment123"

  // Dynamic service name (default)
  serviceName: "my-app-service123"

  // Dynamic service account name (default)
  serviceAccountName: "my-app-sa123"

  // Number of replicas
  replicas: 1

  // Container image configuration
  image: {
    repository: "docker.io/nginx"
    tag:        "latest"
    digest:     ""
    pullPolicy: "IfNotPresent"
  }

  // Service configuration
  service: {
    port: 80
  }

  // Application message
  message: "Hello from Timoni!"

  // Test configuration
  test: {
    enabled: false
    image: {
      repository: "docker.io/curlimages/curl"
      tag:        "latest"
      digest:     ""
    }
  }
}
 
