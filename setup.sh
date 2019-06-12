#!/usr/bin/env bash
set -e
rm -rf build/ dist/ swagger-py-codegen.egg-info
python setup.py sdist bdist_wheel
devpi login twu --password=aibee.2019wt
devpi upload
rm -rf build/ dist/ swagger-py-codegen.egg-info
pip uninstall -y swagger-py-codegen
pip install swagger-py-codegen
