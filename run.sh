#! /bin/sh

docker run -it --rm \
    --user=$(id -u $USER):$(id -g $USER) \
    --env="DISPLAY" \
    --workdir="$HOME" \
    --volume="$HOME:$HOME" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    fritzing "$@"
