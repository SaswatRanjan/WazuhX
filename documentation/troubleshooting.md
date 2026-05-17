# WazuhX Troubleshooting Guide

## Overview

This guide provides operational troubleshooting procedures for
diagnosing and resolving common WazuhX deployment, detection,
compliance, dashboard, automation, and integration issues.

------------------------------------------------------------------------

## 1. Manager Service Failures

### Symptoms

-   Manager not starting
-   Service crashes
-   Missing alerts
-   Configuration load failures

### Diagnostics

``` bash
systemctl status wazuh-manager
journalctl -u wazuh-manager
/var/ossec/bin/wazuh-analysisd -t
```

### Common Causes

-   Invalid ossec.conf syntax
-   Rule conflicts
-   Decoder conflicts
-   Missing dependencies
-   Resource exhaustion

### Resolution

-   Validate configs
-   Correct XML syntax
-   Check logs
-   Restart services
-   Verify permissions

------------------------------------------------------------------------

## 2. Agent Registration Failures

### Symptoms

-   Agent not appearing
-   Enrollment failures
-   Authentication errors

### Diagnostics

``` bash
/var/ossec/bin/manage_agents -l
systemctl status wazuh-agent
```

### Common Causes

-   Wrong manager IP
-   Firewall restrictions
-   Key mismatch
-   Enrollment issues

### Resolution

-   Re-register agent
-   Update manager address
-   Open required ports
-   Reimport keys

------------------------------------------------------------------------

## 3. Dashboard Access Issues

### Symptoms

-   Dashboard unavailable
-   Login failures
-   TLS errors
-   API errors

### Diagnostics

``` bash
systemctl status wazuh-dashboard
systemctl status opensearch
curl -k https://localhost:5601
```

### Common Causes

-   TLS misconfiguration
-   OpenSearch failures
-   RBAC issues
-   Certificate expiry

### Resolution

-   Renew certificates
-   Validate dashboard configs
-   Restart services
-   Review access controls

------------------------------------------------------------------------

## 4. Rule & Decoder Failures

### Symptoms

-   Missing alerts
-   Parsing errors
-   Invalid rule loads

### Diagnostics

``` bash
/var/ossec/bin/wazuh-analysisd -t
tail -f /var/ossec/logs/ossec.log
```

### Common Causes

-   Invalid syntax
-   Duplicate IDs
-   Parent decoder issues
-   Regex failures

### Resolution

-   Validate syntax
-   Correct IDs
-   Test regex
-   Reload rules

------------------------------------------------------------------------

## 5. YARA / Sigma Detection Issues

### Symptoms

-   Missing detections
-   YARA failures
-   Sigma rules inactive

### Common Causes

-   Invalid signatures
-   File path issues
-   Rule syntax errors

### Resolution

-   Validate YARA syntax
-   Verify integrations
-   Test manually
-   Review logs

------------------------------------------------------------------------

## 6. Integration Failures

### Symptoms

-   Threat intel not enriching
-   Slack alerts failing
-   API failures
-   ServiceNow ticket issues

### Diagnostics

-   Check API keys
-   Review integration logs
-   Validate endpoints
-   Test outbound connectivity

### Resolution

-   Rotate API keys
-   Correct configs
-   Validate credentials
-   Restart integrations

------------------------------------------------------------------------

## 7. Compliance Scan Issues

### Symptoms

-   Missing SCA results
-   Compliance dashboards empty
-   Audit failures

### Common Causes

-   Missing policies
-   Disabled modules
-   Invalid paths

### Resolution

-   Verify SCA enabled
-   Validate policy deployment
-   Restart agents

------------------------------------------------------------------------

## 8. Automation Failures

### Bash

-   Dependency issues
-   Permission errors

### PowerShell

-   Execution policy restrictions
-   Sysmon deployment failures

### Ansible

-   Inventory issues
-   SSH failures

### Terraform

-   Credential issues
-   Resource conflicts

------------------------------------------------------------------------

## 9. Backup & Restore Issues

### Symptoms

-   Corrupted backups
-   Failed restores
-   Missing dashboards

### Resolution

-   Validate archive integrity
-   Confirm permissions
-   Test restoration regularly

------------------------------------------------------------------------

## 10. Performance Issues

### Symptoms

-   High CPU
-   Memory exhaustion
-   Slow dashboards
-   Log delays

### Mitigation

-   Scale horizontally
-   Increase RAM
-   Tune rules
-   Optimize OpenSearch
-   Archive logs

------------------------------------------------------------------------

## 11. Security Hardening Validation

-   TLS active
-   MFA functional
-   RBAC enforced
-   APIs secured
-   Ports restricted
-   Backups operational

------------------------------------------------------------------------

## 12. Common Enterprise Risks

-   Config drift
-   Backup neglect
-   Compliance failures
-   Tenant leakage
-   Alert fatigue
-   Integration outages

------------------------------------------------------------------------

## Strategic Objectives

-   Rapid recovery
-   Reduced downtime
-   Compliance continuity
-   Operational resilience
-   Security maturity

------------------------------------------------------------------------

## Bottom Line

This troubleshooting guide enables WazuhX administrators to maintain
enterprise operational stability, resolve security platform issues
efficiently, and preserve governance, resilience, and commercial
readiness.
