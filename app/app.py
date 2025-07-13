from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

def get_client_ip():
    # Try to get public IP from headers set by reverse proxies
    if "X-Forwarded-For" in request.headers:
        # Might contain multiple IPs; first is original client
        return request.headers["X-Forwarded-For"].split(",")[0].strip()
    return request.remote_addr

@app.route("/", methods=["GET"])
def get_info():
    client_ip = get_client_ip()
    timestamp = datetime.utcnow().isoformat() + "Z"
    
    return jsonify({
        "timestamp": timestamp,
        "ip": client_ip
    })

