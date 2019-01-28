#!/bin/bash

basic_alpine=basic_alpine:dockerfile
docker build -t $basic_alpine ./basic
docker save $basic_alpine > ./basic/dockerfile_image/basic_alpine_img.tar

ext_alpine=extended_alpine:dockerfile
docker build -t $ext_alpine ./extended
docker save $ext_alpine > ./extended/dockerfile_image/extended_alpine_img.tar

bazel_gcloud=bazel_gcloud:dockerfile
docker build -t $bazel_gcloud ./bazel_gcloud
docker save $bazel_gcloud > ./bazel_gcloud/dockerfile_image/bazel_gcloud_img.tar

java_python=java_python:dockerfile
docker build -t $java_python ./run_instruction
docker save $java_python > ./run_instruction/dockerfile_image/java_python_img.tar

java_app=java_app:dockerfile
docker build -t $java_app ./java_app
