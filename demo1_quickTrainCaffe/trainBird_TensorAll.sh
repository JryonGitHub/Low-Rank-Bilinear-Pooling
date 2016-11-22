#!/usr/bin/env sh

#export LD_LIBRARY_PATH="/mnt/data/skong/libs:$LD_LIBRARY_PATH"
#export PATH="/mnt/data/skong/libs:$PATH"

export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

CURPATH='../caffe-20160312'

cd $CURPATH

TOOLS=./build/tools

$TOOLS/caffe.bin train \
  --solver=/mnt/data2/skong/BirdProject/githubRelease/Low-Rank-Bilinear-Pooling/demo1_quickTrainCaffe/solverBird_TensorAll.prototxt -gpu 0 \
  --weights=/mnt/data2/skong/BirdProject/githubRelease/Low-Rank-Bilinear-Pooling/demo1_quickTrainCaffe/snapshotTensor_iter_13000.caffemodel
  


