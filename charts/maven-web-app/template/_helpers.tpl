{{/* defining number of replicas for different k8s environment */}}
{{- define "numberReplicas" -}}
  {{- if eq .Values.aws.environment "dev" -}}
    1
  {{- else if eq .Values.aws.environment "stage" -}}
    5
  {{- if eq .Values.aws.environment "prod" -}}
    {{- if eq .Values.aws.name "cvs" -}} 
      5
    {{- if eq .Values.aws.name "walmart" -}} 
      50
    {{- if eq .Values.aws.name "boeing" -}}
      60 
    {{- else -}}
      3
    {{- end -}}
  {{- end -}}
{{- end -}}

