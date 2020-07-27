# Kubenator

This is a simple docker image that will validate K8s manifest files for you, designed to be used in automated CI pipelines.

To get started with it you can run `docker run robertmccausland4/kubenator -v /path/to/k8s/files:/data`, and the container will validate any files in the directory supplied. If you have invalid files it will output an error message and exit with a non 0 status code, otherwise it will exit with a 0 status code.

Internally it is a wrapper around a CLI provided by [kubeyaml](https://github.com/chuckha/kubeyaml).