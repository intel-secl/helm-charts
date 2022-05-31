{{/*
   RBAC for create and delete secret for Jobs
*/}}
{{- define "factory.getRBACRolesAndPermissions" -}}
{{- include "factory.headers" . }}
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "factory.name" . }}
  namespace: {{ .Release.Namespace }}
  annotations:
    "helm.sh/hook": pre-install
    "helm.sh/hook-weight": "-5"
---
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: {{ include "factory.name" . }}
  namespace: {{ .Release.Namespace }}
  annotations:
    "helm.sh/hook": pre-install
    "helm.sh/hook-weight": "-5"
rules:
- apiGroups: [""]
  resources: ["secrets","pods"]
  verbs: ["get","create","delete","list"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: {{ include "factory.name" . }}
  namespace: {{ .Release.Namespace }}
  annotations:
    "helm.sh/hook": pre-install
    "helm.sh/hook-weight": "-5"
subjects:
- kind: ServiceAccount
  name: {{ include "factory.name" . }}
  namespace: {{ .Release.Namespace }}
roleRef:
  kind: Role
  name: {{ include "factory.name" . }}
  apiGroup: rbac.authorization.k8s.io
{{- end -}}