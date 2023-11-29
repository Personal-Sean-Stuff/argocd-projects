
# Example Microservices Platform

This project is an example platform that integrates multiple microservices. It is designed to demonstrate best practices for deploying microservices using Helm charts within a Kubernetes environment.

## Prerequisites

- Kubernetes 1.12+
- Helm 3.1.0

## Building Dependencies

```bash
helm dependency build
```

This command inspects the `Chart.yaml` file and downloads all the specified dependencies into the `charts/` directory. If your chart's dependencies are already packaged in the `charts/` directory, this command will verify all the dependencies against their specified versions.

## Installing the Chart

To install the chart with the release name `<release_name>`:

```bash
helm install <release_name> .
```

This command deploys the example microservices platform on the Kubernetes cluster with the default configuration.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `<release_name>` deployment:

```bash
helm delete <release_name>
```

This command removes all the Kubernetes components associated with the chart and deletes the release.

## Customizing the Installation

To install the chart with a custom configuration:

```bash
helm install <release_name> <repo_name>/<chart_name> --values your_values.yaml
```

## Contributing

We welcome contributions. To contribute, please follow the standard GitHub pull request process.

Feel free to submit issues or pull requests, and we'll address them as we can.
