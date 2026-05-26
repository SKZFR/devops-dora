from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Mastère DevOps"

@app.route("/health")
def health():
    return {"status": "ok"}, 200

if __name__ == "__main__":
    app.run(host="192.168.1.51", port=5000)
