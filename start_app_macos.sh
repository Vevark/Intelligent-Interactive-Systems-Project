#!/bin/bash
LANG=en_US.UTF-8
if [ "$(uname)" == "Darwin" ]
then    
	echo "[App]: Start server in MacOS"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]
then    
	echo "[App]: Start server in GNU/Linux"
fi
export FLASK_APP=./RPSLSPlayer/app.py
flask run
