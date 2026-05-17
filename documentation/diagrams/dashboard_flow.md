# WazuhX Dashboard Visualization Flow

## Overview
This document illustrates how WazuhX dashboards consume detection, compliance, threat intelligence, and operational data to provide enterprise security visibility.

---

# Dashboard Data Flow

```text
+----------------------+
| Endpoint / Cloud Logs|
+----------------------+
           |
           v
+----------------------+
| Wazuh Agents         |
| Cloud Connectors     |
+----------------------+
           |
           v
+----------------------+
| Wazuh Managers       |
| Rules / Decoders     |
+----------------------+
           |
           v
+----------------------+
| YARA / Sigma / TI    |
| Enrichment Layer     |
+----------------------+
           |
           v
+----------------------+
| OpenSearch Storage   |
+----------------------+
           |
           v
+------------------------------------------------------+
| Dashboard Ecosystem                                  |
|------------------------------------------------------|
| Executive | SOC | Compliance | MITRE | Cloud | OT    |
| Vulnerability | DevSecOps | MSSP Tenant Dashboards   |
+------------------------------------------------------+
           |
           v
+----------------------+
| Reports / Alerts     |
| SOAR / Ticketing     |
+----------------------+