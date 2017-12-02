#!/bin/bash

source /Users/yogesh/tensorflow/bin/activate

# subName
echo ${baseDir}/${subName}

mkdir -p  ${baseDir}/${subName}
cd ${subName}


mkdir tfDir
mkdir -p imgDir/${subName}

pwd
cp -R ../training_dataset/* ./imgDir 
cp ${userImgDir}/${subName}/* ./imgDir/${subName}

 
cd ../

tfDir=${subName}/tfDir
imgDir=${subName}/imgDir

pwd
echo ------ 
python retrain.py \
  --bottleneck_dir=${tfDir}/bottlenecks \
  --how_many_training_steps=500 \
  --model_dir=inception \
  --summaries_dir=${tfDir}/training_summaries/basic \
  --output_graph=${tfDir}/retrained_graph.pb \
  --output_labels=${tfDir}/retrained_labels.txt \
  --image_dir=${imgDir}

echo -- TF training done.
exit 0
