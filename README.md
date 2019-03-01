# custom-build-container-image
How to use a custom build container image in an Azure DevOps Pipeline

This source code is part of a blogpost about using your own custom build container image to create containerized apps for Azure DevOps Pipelines.

More info: [https://yuriburger.net](https://yuriburger.net)

To setup the demo:

Build the pipeline-build-image using the Dockerfile. This is an example image, you can of course use your own. Make sure to include the required libltdl7 and sudo.

Tag and push the image to an Azure Container Registry

Modify the azure-pipelines.yml and create an Azure DevOps pipeline with it 

Queue your build
