# WazuhX Compliance Mapping Guide

## Overview
WazuhX provides enterprise-grade compliance monitoring through modular security controls, policy templates, audit logging, file integrity monitoring, vulnerability detection, and security configuration assessment.

This guide maps WazuhX capabilities to major regulatory and governance frameworks.

---

# Supported Compliance Frameworks
- PCI-DSS
- GDPR
- HIPAA
- NIST 800-53
- NIST Cybersecurity Framework
- CIS Benchmarks
- ISO 27001
- SOC 2
- FedRAMP

---

# PCI-DSS

## Controls Covered
- Authentication monitoring
- Privileged access logging
- File integrity monitoring
- Vulnerability scanning
- Audit log retention
- Security event correlation

## Relevant Modules
- `pci_dss.conf`
- `compliance_rules.xml`
- `syscheck`
- `auditd`
- `vulnerability-detection`

## Dashboard
- Compliance dashboard
- Executive dashboard

---

# GDPR

## Controls Covered
- Data access auditing
- Unauthorized file access detection
- Privacy breach logging
- Data retention governance
- Insider threat detection

## Relevant Modules
- `gdpr.conf`
- FIM
- Insider threat rules
- Compliance dashboards

---

# HIPAA

## Controls Covered
- Healthcare data audit trails
- Authentication controls
- File integrity
- Access monitoring
- Incident logging
- Security baselines

## Relevant Modules
- HIPAA compliance packs
- Endpoint monitoring
- Compliance rules

---

# NIST 800-53 / NIST CSF

## Controls Covered
- Continuous monitoring
- Risk assessment
- Configuration auditing
- Security hardening
- Incident response
- Governance reporting

## Relevant Modules
- SCA policies
- Custom rules
- Executive dashboard
- Threat hunting modules

---

# CIS Benchmarks

## Controls Covered
- OS hardening
- Password policies
- Service restrictions
- Audit controls
- Secure configurations

## Relevant Modules
- SCA
- CIS templates
- Baseline configs

---

# ISO 27001

## Controls Covered
- Information security governance
- Logging
- Access controls
- Risk management
- Incident response
- Policy enforcement

---

# SOC 2

## Controls Covered
- Security
- Availability
- Confidentiality
- Monitoring
- Audit logging

---

# FedRAMP

## Controls Covered
- Federal logging standards
- Continuous diagnostics
- Configuration baselines
- Vulnerability controls
- Audit readiness

---

# Compliance Mapping Table

| Framework | Primary Config | Detection Modules | Dashboards |
|-----------|----------------|------------------|------------|
| PCI-DSS | pci_dss.conf | compliance_rules.xml | compliance_dashboard |
| GDPR | gdpr.conf | insider_threat_rules.xml | compliance_dashboard |
| HIPAA | hipaa.conf | local_rules.xml | compliance_dashboard |
| NIST | nist.conf | custom_rules | executive_dashboard |
| CIS | cis_baseline | sca | executive_dashboard |
| ISO 27001 | iso_controls | custom_rules | executive_dashboard |

---

# Compliance Audit Workflow
1. Deploy compliance module
2. Apply SCA policies
3. Validate controls
4. Review dashboard metrics
5. Investigate alerts
6. Export compliance reports
7. Remediate failures
8. Repeat scheduled audits

---

# Reporting Features
- Executive summaries
- Technical audit reports
- Compliance dashboards
- SLA reporting
- Regulatory evidence exports

---

# Governance Benefits
- Audit readiness
- Reduced compliance gaps
- Regulatory visibility
- Consulting readiness
- Enterprise governance maturity
- Client assurance

---

# Strategic Outcome
WazuhX functions as:

## A compliance engineering platform capable of:
- Regulatory enforcement
- Continuous monitoring
- Audit support
- Governance reporting
- Security control validation
- MSSP compliance services

---

# Bottom Line
WazuhX compliance architecture delivers scalable, enterprise-grade regulatory alignment across multiple industries while supporting operational security, governance maturity, and commercial consulting potential.