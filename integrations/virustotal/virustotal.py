import requests

API_KEY = "YOUR_VIRUSTOTAL_API_KEY"
BASE_URL = "https://www.virustotal.com/api/v3"

def scan_file_hash(file_hash):
    headers = {"x-apikey": API_KEY}
    response = requests.get(f"{BASE_URL}/files/{file_hash}", headers=headers)
    return response.json()

if __name__ == "__main__":
    test_hash = "FILE_HASH_HERE"
    result = scan_file_hash(test_hash)
    print(result)
