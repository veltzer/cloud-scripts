#!/bin/bash -e
virtualenv ~/.venv
source ~/.venv/bin/activate
pip install --upgrade pip
pip install --upgrade pyawskit
