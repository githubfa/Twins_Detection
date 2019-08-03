set PYTHONPATH=%PYTHONPATH%;.\slim;.\object_detection
python ./object_detection/train.py --logtostderr --train_dir=training/ --pipeline_config_path=ssd_mobilenet_v1_coco.config

python ./object_detection/export_inference_graph.py --input_type=image_tensor --pipeline_config_path=ssd_mobilenet_v1_coco.config --trained_checkpoint_prefix=training/model.ckpt-2000 --output_directory=pbOutput