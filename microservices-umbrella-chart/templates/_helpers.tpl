{{- define "configmap.data" }}
data:
    {{- range $k, $v := .Values.configmap.data }}
    {{ $k }}: {{ $v }}
    {{- end}}
{{- end }}

{{- define "initConfigMap.data" }}
data:
    {{- range $k, $v := .Values.initConfigMap.data }}
    {{ $k }}: {{ $v }}
    {{- end}}
{{- end }}
