# Monitoring Agent

Monitoring Agent: Bundle of Prometheus server and exporters to retrieve and send telemetry data to the Monitoring Manager

# Interfaces documentation

Telemetry data is pushed to the Monitoring Manager Thanos server through the Thanos Receiver following the [Prometheus Remote-Write Specification](https://prometheus.io/docs/concepts/remote_write_spec/) (gRPC)

# Getting Started

Before deploying, Monitoring Manager must be deployed with a working Thanos receive endpoint.

Create a `values.yaml` file in the root directory and include:
- Thanos receive endpoint from Monitoring Manager
- Name of the cluster where Agent is being deployed (same name used in OCM)

Deploy using Helm:
```sh
helm upgrade -i  monitoring-agent monitoring-agent/ -f values.yaml
```