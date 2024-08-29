module mypythonapp {
    source = "moulayhafidelhafa/release/helm"
    version = "0.0.7"
    name = "python"
    namespace = "wordpress"
    annotations = {
    name = "new-annotation"
    }
    labels = {
      name = "new-labels"
    }
  values  = [<<EOF
replicaCount: 1

image:
  repository: nginx
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}