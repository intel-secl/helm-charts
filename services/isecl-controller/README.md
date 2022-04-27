
Isecl-controller
===========

A Helm chart for Installing ISecL-DC Custom Controller


## Configuration

The following table lists the configurable parameters of the Isecl-controller chart and their default values.

| Parameter                | Description             | Default        |
| ------------------------ | ----------------------- | -------------- |
| `nameOverride` | The name for ISECL-CONTROLLER chart<br> (Default: `.Chart.Name`) | `""` |
| `controlPlaneLabel` | K8s control plane label<br> (**REQUIRED**)<br> Example: `node-role.kubernetes.io/master` in case of `kubeadm`/`microk8s.io/cluster` in case of `microk8s` | `"<user input>"` |
| `image.svc.name` | The image name with which ISECL-CONTROLLER image is pushed to registry<br> (**REQUIRED**) | `"<user input>"` |
| `image.svc.pullPolicy` | The pull policy for pulling from container registry for ISECL-CONTROLLER<br> (Allowed values: `Always`/`IfNotPresent`) | `"Always"` |
| `image.svc.imagePullSecret` | The image pull secret for authenticating with image registry, can be left empty if image registry does not require authentication | `null` |
| `securityContext.init.fsGroup` |  | `1001` |
| `securityContext.iseclController.runAsUser` |  | `1001` |
| `securityContext.iseclController.runAsGroup` |  | `1001` |
| `securityContext.iseclController.capabilities.drop` |  | `["all"]` |
| `securityContext.iseclController.allowPrivilegeEscalation` |  | `false` |
| `nodeTainting.taintRegisteredNodes` | If set to true, taints the node which are joined to the k8s cluster. (Allowed values: `true`\`false`) | `false` |
| `nodeTainting.taintRebootedNodes` | If set to true, taints the node which are rebooted in the k8s cluster. (Allowed values: `true`\`false`) | `false` |
| `nodeTainting.taintUntrustedNode` | If set to true, taints the node which has trust tag set to false in node labels. (Allowed values: `true`\`false`) | `false` |
| `service.directoryName` |  | `"isecl-k8s-controller"` |
| `storage.nfs.server` | The NFS Server IP/Hostname<br> (**REQUIRED**) | `"<user input>"` |
| `storage.nfs.reclaimPolicy` | The reclaim policy for NFS<br> (Allowed values: `Retain`/) | `"Retain"` |
| `storage.nfs.accessModes` | The access modes for NFS<br> (Allowed values: `ReadWriteMany`) | `"ReadWriteMany"` |
| `storage.nfs.path` | The path for storing persistent data on NFS | `"/mnt/nfs_share"` |
| `storage.nfs.logsSize` | The logs size for storing logs for KBS in NFS path | `"1Gi"` |
| `storage.nfs.baseSize` | The base volume size (configSize + logSize) | `"1Gi"` |
| `factory.nameOverride` |  | `""` |



---
_Documentation generated by [Frigate](https://frigate.readthedocs.io)._
