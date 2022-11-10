install:
	helm install microservice ./microservices-umbrella-chart -f microservices-umbrella-chart/values.yaml -n microservices --create-namespace
uninstall:
	helm uninstall microservice -n microservices
