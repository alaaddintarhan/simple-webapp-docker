from flask import Flask
app = Flask(__name__)

print (“Hello Openshift”)

@app.route('/')
def hello():
    return 'Congratulations! you have successfully host Flask in a Docker container!'
if __name__ == "__main__":
    app.run(host ='0.0.0.0', debug = True)
