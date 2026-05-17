# WazuhX MSSP Multi-Tenant Architecture

## Overview
The WazuhX MSSP architecture is designed to support Managed Security Service Provider operations by enabling secure, scalable, and isolated multi-client cybersecurity monitoring.

This framework allows security providers to manage multiple organizations from a centralized WazuhX platform while maintaining tenant segregation, compliance separation, reporting customization, and SLA governance.

---

# Core MSSP Objectives
- Multi-tenant deployment
- Client isolation
- Tenant-specific dashboards
- Dedicated compliance modules
- SLA reporting
- White-label security services
- Centralized threat intelligence
- Scalable client onboarding
- Cross-client automation

---

# Primary MSSP Layers

## Layer 1: Centralized WazuhX Management Cluster
### Components:
- Wazuh Manager cluster
- OpenSearch cluster
- Dashboard cluster
- API gateways
- Backup systems
- Automation servers

### Purpose:
Provides centralized security operations while supporting tenant isolation.

---

## Layer 2: Tenant Segmentation Layer
### Features:
- Dedicated agent groups
- Tenant-specific rules
- Tenant-specific decoders
- Separate dashboards
- Client alert channels
- Access control segregation
- Compliance pack segregation

### Purpose:
Ensures each customer environment remains logically isolated.

---

## Layer 3: Client Infrastructure Layer
### Supported Tenant Environments:
- SMB clients
- Enterprise clients
- Government clients
- Healthcare clients
- Cloud-native clients
- Hybrid infrastructure clients
- OT/ICS clients

---

## Layer 4: Threat Intelligence Sharing Layer
### Shared Services:
- VirusTotal
- AbuseIPDB
- MISP
- Global IOC feeds
- SOAR integrations

### Purpose:
Provides intelligence reuse across multiple tenants while preserving data separation.

---

## Layer 5: Reporting & SLA Governance
### Features:
- Executive reports
- Compliance reports
- Incident reports
- Monthly service reviews
- SLA adherence dashboards
- Tenant-specific KPIs

---

# Tenant Folder Architecture

```bash
WazuhX/
└── mssp/
    ├── tenant_A/
    │   ├── configs/
    │   ├── dashboards/
    │   ├── reports/
    │   └── compliance/
    │
    ├── tenant_B/
    │   ├── configs/
    │   ├── dashboards/
    │   ├── reports/
    │   └── compliance/
    │
    └── shared_services/
        ├── integrations/
        ├── threat_intelligence/
        ├── automation/
        └── global_rules/