#!/bin/bash -e

function _install_awscli() {
	rm -rf /tmp/awscliv2.zip /tmp/awscliv2 /tmp/aws "${HOME}/install/aws"
	curl --silent "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
	unzip -qq /tmp/awscliv2.zip -d /tmp
	rm -rf "${HOME}/install/aws"
	/tmp/aws/install -i "${HOME}/install/aws" -b "${HOME}/install/aws/bin" > /dev/null
	rm -rf /tmp/aws
	# checking that you do not have 'awscli' installed from pypi
	if pip show awscli 2> /dev/null
	then
		echo "you have the old 'awscli' python module installed. removing it!!!"
		pip uninstall awscli 2> /dev/null || true
	else
		echo "you dont have the old 'awscli' python module. no need to uninstall it. good!"
	fi
	echo "following is the version of awscli (aws --version)..."
	"${HOME}/install/aws/bin/aws" --version
}

_install_awscli
