FULL_PATH=$(pwd)
docker image build -t lambda-layers-python:latest ./
docker container run --rm -it -v "$FULL_PATH/:/usr/src/app/" lambda-layers-python:latest sh build.sh
