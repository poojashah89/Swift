from flask import Flask, request 
import Pyro4
import sys

app = Flask(__name__)

@app.route("/chat")
def chat():
    get = Pyro4.Proxy("PYRONAME:example.bot")
    print("hi")
    question = request.args.get('chat')
    name = get.get_response(question)
    return name

if __name__ == "__main__":
     app.run(host="0.0.0.0", port=5000)

