from flask import Flask
import socket

server = Flask(__name__)


@server.route("/")
def hello():
    host_name = socket.gethostname()
    host_ip = socket.gethostbyname(host_name)
    return "My hostname is " + host_name + " [" + host_ip + "]"


if __name__ == "__main__":
    server.run(host='0.0.0.0')
