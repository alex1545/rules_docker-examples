## Notes

Note that this example dose not include a test.
That is because the images generated here will act as executables when being run.

To verify that the image generated from the Dockerfile works, first follow the
instructions from the main page of the project to build the image and then
simply run:
```
$ docker run java_app:dockerfile
```

Then, to run the equivalent image created by the ```java_image``` rule, from
the root of this project, run the following:
```
bazel run //java_app
```
