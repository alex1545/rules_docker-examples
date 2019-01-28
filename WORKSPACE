workspace(name = "rules_docker_examples")

# Setup

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "aed1c249d4ec8f703edddf35cbe9dfaca0b5f5ea6e4cd9e83e99f3b0d1136c3d",
    strip_prefix = "rules_docker-0.7.0",
    urls = ["https://github.com/bazelbuild/rules_docker/archive/v0.7.0.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)
container_repositories()

# basic and extended examples

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    "container_load",
)

container_pull(
    name = "alpine_linux_amd64",
    registry = "index.docker.io",
    repository = "library/alpine",
    tag = "3.8",
)

container_load(
	name = "basic_alpine_workspace",
	file = "//basic/dockerfile_image:basic_alpine_img.tar",
)

# Dockerfile image loading
container_load(
	name = "extended_alpine_workspace",
	file = "//extended/dockerfile_image:extended_alpine_img.tar",
)

# bazel_gcloud example

http_archive(
    name = "base_images_docker",
    sha256 = "c491e669299c842da1c1767c5bde73c3740b2fae19b9e38dae1732ca1725a2ef",
    strip_prefix = "base-images-docker-635108c36ae89167a3ca8eb53706aed641145177",
    urls = ["https://github.com/GoogleCloudPlatform/base-images-docker/archive/635108c36ae89167a3ca8eb53706aed641145177.tar.gz"],
)

container_pull(
    name = "bazel_image",
    registry = "launcher.gcr.io",
    repository = "google/bazel",
)

http_file(
    name = "gcloud_archive",
    downloaded_file_path = "google-cloud-sdk.tar.gz",
    sha256 = "a2205e35b11136004d52d47774762fbec9145bf0bda74ca506f52b71452c570e",
    urls = [
        "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-220.0.0-linux-x86_64.tar.gz",
    ],
)

# Dockerfile image loading
container_load(
	name = "bazel_gcloud_workspace",
	file = "//bazel_gcloud/dockerfile_image:bazel_gcloud_img.tar",
)

# run_instruction example

container_pull(
    name = "ubuntu1604",
    registry = "gcr.io",
    repository = "cloud-marketplace/google/ubuntu1604",
    tag = "latest",
)

# Dockerfile image loading
container_load(
	name = "java_python_workspace",
	file = "//run_instruction/dockerfile_image:java_python_img.tar",
)

# java_app example

load(
	"@io_bazel_rules_docker//java:image.bzl",
	_java_image_repos = "repositories",
)

_java_image_repos()
