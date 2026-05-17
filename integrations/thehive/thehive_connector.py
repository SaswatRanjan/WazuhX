import requests

THEHIVE_URL = "https://your-thehive-instance"
API_KEY = "YOUR_THEHIVE_API_KEY"

headers = {
    "Authorization": f"Bearer {API_KEY}",
    "Content-Type": "application/json"
}

def create_alert(title, description):
    payload = {
        "title": title,
        "description": description,
        "severity": 3,
        "source": "WazuhX"
    }
    response = requests.post(f"{THEHIVE_URL}/api/v1/alert", headers=headers, json=payload)
    return response.json()

if __name__ == "__main__":
    print(create_alert("Critical Threat", "WazuhX detected suspicious activity"))
