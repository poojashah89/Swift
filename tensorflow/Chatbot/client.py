from flask import Flask, request 
import Pyro4
import sys

app = Flask(__name__)

@app.route("/chat")
def chat():
    get = Pyro4.Proxy("PYRONAME:example.bot")
    question = request.args.get('chat')
    name = get.get_response(question)
    return name
