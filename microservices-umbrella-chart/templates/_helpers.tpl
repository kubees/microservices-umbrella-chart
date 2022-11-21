{{- define "configmap.data" }}
data:
    {{- range $k, $v := .Values.configmap.data }}
    {{ $k }}: {{ $v | quote }}
    {{- end }}
{{- end }}

{{- define "initConfigMap.data" }}
data:
    {{- range $k, $v := .Values.initConfigMap.data }}
    {{ $k }}: {{ $v | quote }}
    {{- end }}
{{- end }}

{{- define "container.ports" }}
ports:
    {{- range .Values.deployment.container.ports }}
    - containerPort: {{ .port }}
      name: {{ .name }}
    {{- end }}
{{- end }}

{{- define "container.probe"}}
livenessProbe:
    httpGet:
        port: {{ .Values.deployment.container.probe.livenessProbe.port }}
        path: {{ .Values.deployment.container.probe.livenessProbe.path }}
readinessProbe:
    httpGet:
        port: {{ .Values.deployment.container.probe.readinessProbe.port }}
        path: {{ .Values.deployment.container.probe.readinessProbe.path }}
{{- end}}