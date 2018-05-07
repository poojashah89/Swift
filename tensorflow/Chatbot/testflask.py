from flask import Flask
app = Flask(__name__)

@app.route('/hi')
def hello_world():
	print('hi')
	return 'hi pooja'
