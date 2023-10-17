.PHONY: apply-source-connector
apply_source_connector:
	curl -X POST http://localhost:8083/connectors \
		-H "Content-Type: application/json" \
		-d @kafka/connect/source_connector.json

.PHONY: install-api
install-api:
	go install github.com/kwanok/minsim-api@latest

.PHONY: run-api
run-api:
	minsim-api --config=configs/minsim-api.yaml

.PHONY: install-consumer
install-consumer:
	go install github.com/kwanok/minsim-consumer@latest

.PHONY: run-consumer
run-consumer:
	minsim-consumer --config=configs/minsim-consumer.yaml

