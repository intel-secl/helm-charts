
Sqvs
===========

A Helm chart for Installing ISecL-DC SGX Verification Service


## Configuration

The following table lists the configurable parameters of the Sqvs chart and their default values.

| Parameter                | Description             | Default        |
| ------------------------ | ----------------------- | -------------- |
| `nameOverride` | The name for SQVS chart<br> (Default: `.Chart.Name`) | `""` |
| `controlPlaneHostname` | K8s control plane IP/Hostname<br> (**REQUIRED**) | `"<user input>"` |
| `dependentServices.cms` |  | `"cms"` |
| `dependentServices.aas` |  | `"aas"` |
| `dependentServices.scs` |  | `"scs"` |
| `config.envVarPrefix` |  | `"SQVS"` |
| `config.sgxTrustedRootCaPath` |  | `"/tmp/trusted_rootca.pem"` |
| `config.signQuoteResponse` |  | `false` |
| `config.responseSigningKeyLength` |  | `3072` |
| `config.includeToken` |  | `true` |
| `secret.serviceUsername` | Service Username for SQVS | `null` |
| `secret.servicePassword` | Service Password for SQVS | `null` |
| `aas.url` | Please update the url section if sqvs is exposed via ingress | `null` |
| `aas.secret.adminUsername` | Admin Username for AAS | `null` |
| `aas.secret.adminPassword` | Admin Password for AAS | `null` |
| `image.svc.name` | The image name with which SQVS image is pushed to registry<br> (**REQUIRED**) | `"<user input>"` |
| `image.svc.pullPolicy` | The pull policy for pulling from container registry for SQVS<br> (Allowed values: `Always`/`IfNotPresent`) | `"Always"` |
| `image.svc.imagePullSecret` | The image pull secret for authenticating with image registry, can be left empty if image registry does not require authentication | `null` |
| `image.aasManager.name` | The image name with which AAS-Manager image is pushed to registry<br> (**REQUIRED**) | `"<user input>"` |
| `image.aasManager.pullPolicy` | The pull policy for pulling from container registry for AAS-Manager<br> (Allowed values: `Always`/`IfNotPresent`) | `"Always"` |
| `image.aasManager.imagePullSecret` | The image pull secret for authenticating with image registry, can be left empty if image registry does not require authentication | `null` |
| `storage.nfs.server` | The NFS Server IP/Hostname<br> (**REQUIRED**) | `"<user input>"` |
| `storage.nfs.reclaimPolicy` | The reclaim policy for NFS<br> (Allowed values: `Retain`/) | `"Retain"` |
| `storage.nfs.accessModes` | The access modes for NFS<br> (Allowed values: `ReadWriteMany`) | `"ReadWriteMany"` |
| `storage.nfs.path` | The path for storing persistent data on NFS | `"/mnt/nfs_share"` |
| `storage.nfs.dbSize` | The DB size for storing DB data for SQVS in NFS path | `"5Gi"` |
| `storage.nfs.configSize` | The configuration size for storing config for SQVS in NFS path | `"10Mi"` |
| `storage.nfs.logsSize` | The logs size for storing logs for SQVS in NFS path | `"1Gi"` |
| `storage.nfs.baseSize` | The base volume size (configSize + logSize + dbSize) | `"6.1Gi"` |
| `securityContext.sqvsdbInit.fsGroup` |  | `2000` |
| `securityContext.sqvsdb.runAsUser` |  | `1001` |
| `securityContext.sqvsdb.runAsGroup` |  | `1001` |
| `securityContext.sqvsInit.fsGroup` |  | `1001` |
| `securityContext.sqvs.runAsUser` |  | `1001` |
| `securityContext.sqvs.runAsGroup` |  | `1001` |
| `securityContext.sqvs.capabilities.drop` |  | `["all"]` |
| `securityContext.sqvs.allowPrivilegeEscalation` |  | `false` |
| `service.directoryName` |  | `"sqvs"` |
| `service.cms.containerPort` | The containerPort on which CMS can listen | `8445` |
| `service.aas.containerPort` | The containerPort on which AAS can listen | `8444` |
| `service.aas.port` | The externally exposed NodePort on which AAS can listen to external traffic | `30444` |
| `service.scs.containerPort` | The containerPort on which SCS can listen | `9000` |
| `service.scs.port` | The externally exposed NodePort on which SCS can listen to external traffic | `30502` |
| `service.sqvs.containerPort` | The containerPort on which SQVS can listen | `"12000"` |
| `service.sqvs.port` | The externally exposed NodePort on which SQVS can listen to external traffic | `"30503"` |
| `service.ingress.enable` | Accept true or false to notify ingress rules are enable or disabled | `false` |
| `log.loglevel` |  | `"info"` |
| `log.enableConsoleLog` |  | `"y"` |
| `factory.nameOverride` |  | `""` |



---
_Documentation generated by [Frigate](https://frigate.readthedocs.io)._

