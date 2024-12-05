import requests
import json
import flask
import flask_cors
from flask import jsonify

app = flask.Flask(__name__)
flask_cors.CORS(app)

@app.route('/', methods=['GET'])
def api():
    return jsonify({'data': 'Hello, World!'})


app.run(host='0.0.0.0', debug=True)


