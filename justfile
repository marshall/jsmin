image := "marshallc/jsmin"

build:
    docker build . -t {{ image }} -t {{ image }}:latest

push:
    docker push {{ image }}:latest

run file:
    @docker run --rm -i {{ image }} < {{ file }}

