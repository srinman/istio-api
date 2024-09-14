# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def api1():
    return 'response from api1'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=9080)