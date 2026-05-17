import requests
import json

ROUTING_KEY = "YOUR_PAGERDUTY_ROUTING_KEY"

def trigger_incident(summary):
    url = "https://events.pagerduty.com/v2/enqueue"
    payload = {
        "routing_key": ROUTING_KEY,
        "event_action": "trigger",
        "payload": {
            "summary": summary,
            "source": "WazuhX",
            "severity": "critical"
        }
    }
    response = requests.post(url, json=payload)
    return response.status_code

if __name__ == "__main__":
    trigger_incident("Critical WazuhX threat detected.")
