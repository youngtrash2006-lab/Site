from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Динамическое веб-приложение успешно запущенно через Docker!</h1><p>Среда: Python + Flask</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
