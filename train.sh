DATA_DIR=data
MODEL_DIR=models
rm -Rf $MODEL_DIR
mkdir -p $MODEL_DIR
python3 -m sockeye.train\
                       --source $DATA_DIR/train/modern_nopunct \
                       --target $DATA_DIR/train/original_nopunct \
                       --encoder cnn \
                       --decoder cnn \
		       --cnn-activation-type relu \
		       --layer-normalization \
		       --weight-normalization \
                       --validation-source $DATA_DIR/val/modern_nopunct \
                       --validation-target $DATA_DIR/val/original_nopunct \
                       --output $MODEL_DIR \
                       --decode-and-evaluate 500
