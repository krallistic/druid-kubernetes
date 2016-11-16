{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{/*
Creates a truncated 24char name with the ReleaseName and a given Parameter, useful for sub-charts where fullname is used
on the parent char overrides the name.
*/}}
{{- define "fullCustomName" -}}
{{- $name := index . 0 -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}