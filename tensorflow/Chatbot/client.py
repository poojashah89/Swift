from flask import Flask, request, jsonify 
import Pyro4
import sys
from datetime import datetime

app = Flask(__name__)

@app.route("/chat")
def chat():
    get = Pyro4.Proxy("PYRONAME:example.bot")

    question = request.args.get('chat')
    name = get.get_response(question)
    dtime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    print(dtime)
    return jsonify(message = name, time=str(dtime))

if __name__ == "__main__":
     app.run(host="0.0.0.0", port=5000)

