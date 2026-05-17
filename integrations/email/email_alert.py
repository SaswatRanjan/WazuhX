import smtplib
from email.mime.text import MIMEText

SMTP_SERVER = "smtp.example.com"
SMTP_PORT = 587
USERNAME = "alert@example.com"
PASSWORD = "password"

def send_email(subject, body, recipient):
    msg = MIMEText(body)
    msg["Subject"] = subject
    msg["From"] = USERNAME
    msg["To"] = recipient

    server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
    server.starttls()
    server.login(USERNAME, PASSWORD)
    server.sendmail(USERNAME, recipient, msg.as_string())
    server.quit()

if __name__ == "__main__":
    send_email("WazuhX Alert", "Critical threat detected", "admin@example.com")
