# This shell script runs a builds a zip file for lambda layers by reading requirements.txt files
set -e

build_a_layer()
{
  LAYER_FOLDER_NAME=$1
  echo $LAYER_FOLDER_NAME
  pip install -r ./$LAYER_FOLDER_NAME/requirements.txt -t ./$LAYER_FOLDER_NAME/python/lib/python3.7/site-packages/
  cd $LAYER_FOLDER_NAME; zip -r ../zipped-layers/$LAYER_FOLDER_NAME.zip ./python/*
  cd ../
}

build_a_layer "layer-python-core"

build_a_layer "layer-python-crypto"

build_a_layer "layer-python-math"
