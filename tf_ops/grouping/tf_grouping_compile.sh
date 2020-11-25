#!/bin/bash
nvcc tf_grouping_g.cu -o tf_grouping_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC

g++ -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC -w \
	-I /usr/local/lib/python2.7/dist-packages/tensorflow/include \
	-I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public \
	-L /usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework \
	-I /usr/local/cuda-9.0/include \
	-L /usr/local/cuda-9.0/lib64 -lcudart \
	-O2 -D_GLIBCXX_USE_CXX11_ABI=0
