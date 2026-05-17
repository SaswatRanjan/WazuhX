# WazuhX Network Architecture Diagram Guide

## Overview
This document defines the enterprise network architecture of WazuhX, illustrating secure communication, telemetry flow, modular infrastructure, threat detection layers, cloud integrations, and MSSP segmentation.

---

# Core Network Topology

```text
                           +----------------------+
                           | Executive Dashboards |
                           +----------------------+
                                      |
                                      v
+-------------------+       +----------------------+       +----------------------+
|   SOC Analysts    | <---> |   Wazuh Dashboard    | <---> |  OpenSearch Cluster   |
+-------------------+       +----------------------+       +----------------------+
                                      |
                                      v
                           +----------------------+
                           |    Wazuh Managers     |
                           +----------------------+
                                      |
             -----------------------------------------------------
             |                |                |                |
             v                v                v                v
      +-------------+   +-------------+   +-------------+   +-------------+
      | Linux Agents |   | Windows Agents|  | macOS Agents | | Cloud Agents |
      +-------------+   +-------------+   +-------------+   +-------------+
                                      |
                                      v
                           +----------------------+
                           | Detection Engineering |
                           | Rules / Decoders      |
                           | YARA / Sigma          |
                           +----------------------+
                                      |
                                      v
                           +----------------------+
                           | Threat Integrations   |
                           | VT / MISP / Slack     |
                           | PagerDuty / SOAR      |
                           +----------------------+
                                      |
                                      v
                           +----------------------+
                           | Active Response Layer |
                           +----------------------+


```

# MSSP Multi-Tenant Topology

```text
						   +----------------------------+
						   | Central MSSP Wazuh Cluster |
						   +----------------------------+
									 |
				----------------------------------------------------
				|                    |                    |
				v                    v                    v
			+----------+       +----------+       +----------+
			| Tenant A |       | Tenant B |       | Tenant C |
			+----------+       +----------+       +----------+
				|                    |                    |
			Dashboards          Dashboards          Dashboards
			Compliance          Compliance          Compliance
			Rules               Rules               Rules
```

# Cloud Integration Flow

```text
AWS CloudTrail --->|
Azure Monitor ---> |--> Wazuh Cloud Security Layer
GCP Audit Logs --->|
SaaS Logs ------->|