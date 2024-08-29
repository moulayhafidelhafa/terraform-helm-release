variable "name" {
  type        = string
  default     = "wordpress"
  description = "my wordpress application"
}

variable "namespace" {
  type        = string
  description = "the namespace for app"
  default     = "mywordpressapp"
}

variable values {
    type = list
    default = []
    description = "values for my chart"
}

variable annotations {
  type = map(any)
  description = "map of annotation for namespace"
}

variable labels {
  type = map(any)
  description = "map of labels for namespace"
}