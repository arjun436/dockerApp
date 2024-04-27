from flask import Flask

app = Flask(__name__)

@app.route('/')
def hellow_world():
    return 'HELLO WORLD!'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5002, debug=True)

# run main file to launch app at   http://127.0.0.1:5001/