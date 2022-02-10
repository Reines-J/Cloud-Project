```
fluentd
helm repo add fluent https://fluent.github.io/helm-charts

elasticsearch
helm repo add elastic https://helm.elastic.co

kibana
helm repo add elastic https://helm.elastic.co
```

```
fluentd
helm install fluentd fluentd fluent/fluentd \
--namespace logging \
--values fluentd_values.yml
helm upgrade fluentd fluent/fluentd \
--namespace logging \
--values fluentd_values.yml
```

```
elasticsearch
helm install elasticsearch elastic/elasticsearch \
--namespace logging \
--values elasticsearch_values.yml
helm upgrade eelasticsearch elastic/elasticsearch \
--namespace logging \
--values elasticsearch_values.yml
```

```
kibana
helm install kibana elastic/kibana \
--namespace logging \
--values kibana_values.yml
helm upgrade kibana elastic/kibana \
--namespace logging \
--values kibana_values.yml
```