{{- define "configmap.data" }}
data:
    {{- range $k, $v := .Values.configmap.data }}
    {{ $k }}: {{ $v }}
    {{- end}}
{{- end }}