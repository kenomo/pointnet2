#!/bin/bash

cd ./3d_interpolation
./tf_interpolate_compile.sh

cd ..
cd ./grouping/
./tf_grouping_compile.sh

cd ..
cd ./sampling/
./tf_sampling_compile.sh
