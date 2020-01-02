# My Python Lambda Layers
This repo is meant to be the source of truth and code to build AWS lambda Layers for my personal projects. I would suggest if you are trying to build a AWS Lambda app, you build your own layers using this repo as a source of inspiration.

## Layers in This Repo
#### python-core
```
requests==2.22.0
SQLAlchemy==1.3.12
beautifulsoup4==4.8.2
flashtext==2.7
slackclient==2.5.0
```

#### python-crypto
```
pyjwt==1.7.1
cryptography==2.8
```

#### python-math
```
numpy==1.18.0
pandas==0.25.3
```


## Building or Updating a Layer
**IMPORTANT: If you update a layer make sure to also update your Lambda function to us the new version.**

#### Option 1: Manual Creation
1. Run `bash generate-layer-zip.sh`. This will create all of your layers
1. Confirm you have a `.zip` created in the root of your project
1. Go to AWS create your layer by uploading the zip file, with python 3.7 as the lambda environment

#### Option 2: Create With Continuous Deployment Via Github Actions
1. In the github repo create the following secrets: `AWS_DEFAULT_REGION`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`.
1. Next just add a commit to the master branch.
1. Monitor the Publish_Layers workflow on the `Actions` tab of your repo. When this succeeds the layers should be created.
1. Look in your AWS account to confirm that they are created

# Adding new layers
1. Add a new new folder to the root of the folder with the following folder structure.
    ```

    ```
1. Add this line to .github/workflows/publish_layer.yml
    ```

    ```
