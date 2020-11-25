#!/bin/bash

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -w \
	-I /usr/local/lib/python2.7/dist-packages/tensorflow/include \
	-I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public \
	-L /usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework \
	-I /usr/local/cuda-9.0/include \
	-L /usr/local/cuda-9.0/lib64 -lcudart \
	-O2 -D_GLIBCXX_USE_CXX11_ABI=0
