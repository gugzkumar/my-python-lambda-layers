# This shell script runs a docker container that builds all of our lambda layers
FULL_PATH=$(pwd)
docker image build -t lambda-layers-python:latest ./
docker container run --rm -v "$FULL_PATH/zipped-layers:/usr/src/app/zipped-layers" lambda-layers-python:latest sh build.sh
