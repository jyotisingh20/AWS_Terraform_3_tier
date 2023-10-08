import requests
import json
import sys

def get_metadata(path):
    base_url = "http://169.254.169.254/latest/meta-data/"
    response = requests.get(base_url + path)
    if response.status_code == 200:
        return response.text
    else:
        return None

def main():
    if len(sys.argv) < 2:
        print("Usage: instance_metadata.py <metadata_key>")
        return

    metadata_key = sys.argv[1]
    metadata_value = get_metadata(metadata_key)

    if metadata_value is not None:
        print(json.dumps({metadata_key: metadata_value}, indent=4))
    else:
        print(f"Failed to retrieve metadata for key: {metadata_key}")

if __name__ == "__main__":
    main()
