import requests

WEBHOOK_URL = "YOUR_DISCORD_WEBHOOK_URL"

def send_discord_alert(message):
    payload = {"content": message}
    response = requests.post(WEBHOOK_URL, json=payload)
    return response.status_code

if __name__ == "__main__":
    send_discord_alert("WazuhX Alert: Threat detected.")
