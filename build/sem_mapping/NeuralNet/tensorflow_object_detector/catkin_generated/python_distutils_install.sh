#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/abdessalem/smapping/src/sem_mapping/NeuralNet/tensorflow_object_detector"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/abdessalem/smapping/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/abdessalem/smapping/install/lib/python3/dist-packages:/home/abdessalem/smapping/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/abdessalem/smapping/build" \
    "/usr/bin/python3" \
    "/home/abdessalem/smapping/src/sem_mapping/NeuralNet/tensorflow_object_detector/setup.py" \
     \
    build --build-base "/home/abdessalem/smapping/build/sem_mapping/NeuralNet/tensorflow_object_detector" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/abdessalem/smapping/install" --install-scripts="/home/abdessalem/smapping/install/bin"
