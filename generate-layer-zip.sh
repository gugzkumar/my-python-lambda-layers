FULL_PATH=$(pwd)
echo HI
docker image build -t lambda-layer-python-crypto:latest ./layer-python-crypto
docker container run --rm -it -v "$FULL_PATH/:/usr/src/app/" lambda-layer-python-crypto:latest sh build.sh
