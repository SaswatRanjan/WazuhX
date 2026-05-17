# WazuhX Threat Detection Pipeline Diagram

## Overview
This document outlines the full detection engineering and threat intelligence pipeline of WazuhX, from telemetry collection to automated response.

---

# Threat Detection Pipeline

```text
+----------------------+
| Endpoint / Cloud Log |
+----------------------+
           |
           v
+----------------------+
| Wazuh Agent / Cloud  |
| Collectors           |
+----------------------+
           |
           v
+----------------------+
| Wazuh Manager        |
| Log Ingestion Layer  |
+----------------------+
           |
           v
+----------------------+
| Custom Decoders      |
| Log Normalization    |
+----------------------+
           |
           v
+----------------------+
| Custom Rules Engine  |
| Detection Logic      |
+----------------------+
           |
           v
+----------------------+
| YARA + Sigma Layer   |
| Advanced Threat Hunt |
+----------------------+
           |
           v
+----------------------+
| Threat Intelligence  |
| VT / AbuseIPDB / MISP|
+----------------------+
           |
           v
+----------------------+
| Alert Correlation    |
| MITRE Mapping        |
+----------------------+
           |
           v
+----------------------+
| Dashboards / SOC     |
| Executive / Compliance|
+----------------------+
           |
           v
+----------------------+
| Active Response      |
| Block / Isolate      |
+----------------------+
           |
           v
+----------------------+
| SOAR / Ticketing     |
| TheHive / ServiceNow |
+----------------------+