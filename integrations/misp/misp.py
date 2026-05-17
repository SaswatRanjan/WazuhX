from pymisp import ExpandedPyMISP

MISP_URL = "https://your-misp-instance"
MISP_KEY = "YOUR_MISP_API_KEY"
MISP_VERIFYCERT = False

misp = ExpandedPyMISP(MISP_URL, MISP_KEY, MISP_VERIFYCERT)

def search_ioc(value):
    return misp.search(value=value)

if __name__ == "__main__":
    print(search_ioc("malicious-domain.com"))
