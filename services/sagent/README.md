
Sagent
===========

A Helm chart for Installing sgx-agent


## Configuration

The following table lists the configurable parameters of the Sagent chart and their default values.

| Parameter                | Description             | Default        |
| ------------------------ | ----------------------- | -------------- |
| `nameOverride` | The name for sgx-agent chart<br> (Default: `.Chart.Name`) | `""` |
| `controlPlaneHostname` | K8s control plane IP/Hostname<br> (**REQUIRED**) | `"<user input>"` |
| `nodeLabel.sgxEnabled` | The node label for SGX-ENABLED hosts<br> (**REQUIRED IF NODE IS SGX ENABLED**) | `"SGX-ENABLED"` |
| `dependentServices.cms` |  | `"cms"` |
| `dependentServices.aas` |  | `"aas"` |
| `dependentServices.scs` |  | `"scs"` |
| `dependentServices.shvs` |  | `"shvs"` |
| `image.svc.name` | The image registry where sgx-agent image is pushed<br> (**REQUIRED**) | `"<user input>"` |
| `image.svc.pullPolicy` | The pull policy for pulling from container registry for sgx-agent <br> (Allowed values: `Always`/`IfNotPresent`) | `"Always"` |
| `image.svc.imagePullSecret` | The image pull secret for authenticating with image registry, can be left empty if image registry does not require authentication | `null` |
| `image.svc.initName` |  | `"<user input>"` |
| `image.aasManager.name` | The image name with which AAS manager image is pushed to registry | `"<user input>"` |
| `image.aasManager.pullPolicy` | The pull policy for pulling from container registry for AAS<br> (Allowed values: `Always`/`IfNotPresent`) | `"Always"` |
| `image.aasManager.imagePullSecret` | The image pull secret for authenticating with image registry, can be left empty if image registry does not require authentication | `null` |
| `config.refreshInterval` | Refresh Interval | `"<user input>"` |
| `config.retryCount` | Retry count | `5` |
| `config.validityDays` | Validity Days (Note: Value needs to be provided in quotes) | `7` |
| `config.isShvsRequired` | set this to true for service based deployment | `"true"` |
| `aas.url` |  | `null` |
| `aas.secret.adminUsername` | Admin Username for AAS | `null` |
| `aas.secret.adminPassword` | Admin Password for AAS | `null` |
| `securityContext.aasManager.runAsUser` |  | `1001` |
| `securityContext.aasManager.runAsGroup` |  | `1001` |
| `securityContext.aasManager.capabilities.drop` |  | `["all"]` |
| `securityContext.aasManager.allowPrivilegeEscalation` |  | `false` |
| `securityContext.aasManagerInit.fsGroup` |  | `1001` |
| `securityContext.sagent.fsGroup` |  | `1001` |
| `service.directoryName` |  | `"sagent"` |
| `service.cms.containerPort` | The containerPort on which CMS can listen | `8445` |
| `service.cms.port` | The externally exposed NodePort on which CMS can listen to external traffic | `30445` |
| `service.aas.containerPort` | The containerPort on which AAS can listen | `8444` |
| `service.aas.port` | The externally exposed NodePort on which AAS can listen to external traffic | `30444` |
| `service.scs.containerPort` | The containerPort on which scs can listen | `9000` |
| `service.scs.port` | The externally exposed NodePort on which scs can listen to external traffic | `30502` |
| `service.shvs.containerPort` | The containerPort on which shvs can listen | `13000` |
| `service.shvs.port` |  | `30500` |
| `secret.cccAdminUsername` | ccc admin token username | `null` |
| `secret.cccAdminPassword` | ccc admin token password | `null` |
| `proxy.proxyEnabled` | If proxy is enabled, then set to true | `false` |
| `proxy.http_proxy` | set HTTP Proxy value | `null` |
| `proxy.https_proxy` | set HTTP Proxy value | `null` |
| `proxy.no_proxy` | Append .svc,.svc.cluster.local, to no_proxy | `null` |
| `proxy.all_proxy` | set all proxy value | `null` |
| `log.loglevel` |  | `"info"` |
| `factory.nameOverride` |  | `""` |



---
_Documentation generated by [Frigate](https://frigate.readthedocs.io)._
