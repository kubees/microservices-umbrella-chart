{{- define "configmap.data" }}
data:
    {{- range $k, $v := .Values.configmap.data }}
    {{ $k }}: {{ $v | quote }}
    {{- end}}
{{- end }}

{{- define "initConfigMap.data" }}
data:
    {{- range $k, $v := .Values.initConfigMap.data }}
    {{ $k }}: {{ $v | quote }}
    {{- end}}
{{- end }}
