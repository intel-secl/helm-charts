
wpm aas manager
===========

A Helm chart for creating service account for wpm aas manager


## Configuration

The following table lists the configurable parameters of the wpm aas manager chart and their default values.

| Parameter                | Description             | Default        |
| ------------------------ | ----------------------- | -------------- |
| `nameOverride` | The name for AAS-MANAGER chart (Default: .Chart.Name) | `""` |
| `controlPlaneHostname` | K8s control plane IP/Hostname | `"<user input>"` |
| `dependentServices.cms` |  | `"cms"` |
| `dependentServices.aas` |  | `"aas"` |
| `image.name` | The image name with which aas manager image is pushed to registry | `"<user input>"` |
| `image.pullPolicy` | The pull policy for pulling from container registry (Allowed values: Always/IfNotPresent) | `"Always"` |
| `image.initName` | The image name of init container | `"<user input>"` |
| `image.imagePullSecret` | The image pull secret for authenticating with image registry, can be left empty if image registry does not require authentication | `"<user input>"` |
| `service.cms.containerPort` | The containerPort on which CMS can listen | `8445` |
| `service.aas.containerPort` | The containerPort on which AAS can listen | `8444` |
| `service.aas.port` | The externally exposed NodePort on which AAS can listen to external traffic | `30444` |
| `factory.nameOverride` |  | `""` |



---
_Documentation generated by [Frigate](https://frigate.readthedocs.io)._
