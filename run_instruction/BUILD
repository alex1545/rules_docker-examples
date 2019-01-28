load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@base_images_docker//util:run.bzl", "container_run_and_commit")

container_run_and_commit(
    name = "java_python_install",
    image="@ubuntu1604//image",
    commands = [
    	"apt-get update",
    	"apt-get install -y openjdk-8-jdk python python-dev python-pip python-virtualenv",
    	"rm -rf /var/lib/apt/lists/*",
    ],
)

container_image(
	name = "java_python",
	base = ":java_python_install_commit.tar",
)

# Tests

load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
	name = "java_python_bazel_test",
	configs = ["//run_instruction/test_configs:java_python.yaml"],
	image = ":java_python",
)

container_test(
	name = "java_python_dockerfile_test",
	configs = ["//run_instruction/test_configs:java_python.yaml"],
	image = "@java_python_workspace//image",
)
