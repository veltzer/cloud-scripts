#!/bin/bash -e
touch ~/.hushlogin
cat sourceme >> ~/.bashrc
echo "source ~/.venv/bin/activate" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/install/aws/bin" >> ~/.bashrc
ecoh "complete -C aws_completer aws" >> ~/.bashrc
