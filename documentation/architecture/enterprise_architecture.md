# WazuhX Enterprise Architecture

## Overview
WazuhX is a modular enterprise cybersecurity ecosystem built on Wazuh, designed for security monitoring, detection engineering, compliance governance, cloud security, DevSecOps, OT security, and MSSP operations.

---

# Core Layers

## Layer 1: Core Monitoring
- Wazuh Manager
- Agents
- Syscheck
- Rootcheck
- Vulnerability Detection
- SCA
- OpenSearch
- Dashboard

---

## Layer 2: Detection Engineering
- Custom Rules
- Custom Decoders
- YARA
- Sigma
- MITRE ATT&CK Mapping

---

## Layer 3: Threat Intelligence
- VirusTotal
- AbuseIPDB
- MISP
- Slack
- PagerDuty
- ServiceNow
- TheHive

---

## Layer 4: Automation
- Bash
- PowerShell
- Ansible
- Terraform

---

## Layer 5: Dashboards
- Executive
- SOC
- Compliance
- Cloud
- Vulnerability
- DevSecOps
- OT

---

## Layer 6: Compliance
- PCI-DSS
- GDPR
- HIPAA
- NIST
- CIS
- ISO 27001

---

## Layer 7: MSSP
- Multi-tenant support
- Tenant dashboards
- SLA reporting
- Client isolation

---

# Folder Architecture

```bash
WazuhX/
├── configs/
├── custom_rules/
├── custom_decoders/
├── yara_rules/
├── sigma_rules/
├── automation/
├── integrations/
├── dashboards/
├── documentation/
└── web_portal/