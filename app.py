#app.py
from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def index():
        return render_template("index.html")

@app.route("/data")
def data():
	return "<h1>Cheese and Crackers</h1>"

if __name__ == "__main__":
	app.run(host='0.0.0.0', debug=True)


