# microservices-umbrella-chart
This is a generic helm chart for our microservices.

# Usage
1- Add this secret to `templates` folder.
```yaml
apiVersion: v1
kind: Secret
metadata:
  name: {{ .Values.global.databasePasswordSecret }}
  namespace: {{ .Values.global.namespace }}
data:
  PASSWORD: PASS_BASE_64
```
2- To install the chart run the following command:
```sh
make install
```
