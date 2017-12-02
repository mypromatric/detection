python retrain.py \
  --bottleneck_dir=${tfDir}/bottlenecks \
  --how_many_training_steps=500 \
  --model_dir=inception \
  --summaries_dir=${tfDir}/training_summaries/basic \
  --output_graph=${tfDir}/retrained_graph.pb \
  --output_labels=${tfDir}/retrained_labels.txt \
  --image_dir=${imgDir}