#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/setup_test_env.bash"

blender --background $BLEND/scene_hemi_light.blend \
    --python $PYSCRIPT -- $JSON --vertices --faces --scene \
    --lights --materials --embedGeometry --geometryType Geometry
makereview $@ --tag $(tagname)
