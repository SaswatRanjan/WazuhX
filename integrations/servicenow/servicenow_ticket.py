import requests

INSTANCE = "your-instance"
USERNAME = "admin"
PASSWORD = "password"

def create_incident(short_description):
    url = f"https://{INSTANCE}.service-now.com/api/now/table/incident"
    payload = {
        "short_description": short_description,
        "urgency": "1",
        "impact": "1"
    }
    response = requests.post(url, auth=(USERNAME, PASSWORD), json=payload)
    return response.json()

if __name__ == "__main__":
    print(create_incident("WazuhX detected enterprise threat"))
