FROM grafana/grafana:5.0.4

COPY grafana.ini /etc/grafana/grafana.ini
COPY datasources/all.yaml /etc/grafana/provisioning/datasources/all.yaml
COPY dashboards/all.yaml /etc/grafana/provisioning/dashboards/all.yaml
COPY dashboards /var/lib/grafana/dashboards/
