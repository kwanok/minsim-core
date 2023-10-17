FROM confluentinc/cp-kafka-connect:7.5.1

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:10.7.4
RUN confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:1.5.5
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-json-schema-converter:7.5.1
RUN confluent-hub install --no-prompt debezium/debezium-connector-postgresql:2.2.1