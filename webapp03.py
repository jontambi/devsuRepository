from flask import Flask, jsonify
import socket

myhost = socket.gethostname()

app = Flask(__name__)

tasks = [
    {
        "message": "Hello Juan from " + myhost
    }
]

@app.route("/devsu/tasks", methods=['GET'])
def get_tasks():
    return jsonify({'tasks': tasks})

if __name__ == '__main__':
    app.run(debug=True)
