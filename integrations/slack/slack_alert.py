import requests
import json

WEBHOOK_URL = "YOUR_SLACK_WEBHOOK_URL"

def send_alert(message):
    payload = {"text": message}
    response = requests.post(WEBHOOK_URL, data=json.dumps(payload))
    return response.status_code

if __name__ == "__main__":
    send_alert("WazuhX Alert: Suspicious activity detected.")
