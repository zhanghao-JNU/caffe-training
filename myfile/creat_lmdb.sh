#!/usr/bin/bash
MY=/home/zhanghao/my_source/caffe/examples/myfile
echo "create train lmdb..."
rm -rf $MY/img_train_lmdb
/home/zhanghao/my_source/caffe/build/tools/convert_imageset \
	--shuffle \
	--resize_height=256 \
	--resize_width=256 \
	/home/zhanghao/my_source/caffe/data/re/ \
	$MY/train.txt \
	$MY/img_train_lmdb
echo "create test lmdb..."
/home/zhanghao/my_source/caffe/build/tools/convert_imageset \
	--shuffle \
	--resize_height=256 \
	--resize_width=256 \
	/home/zhanghao/my_source/caffe/data/re/ \
	$MY/test.txt \
	$MY/img_test_lmdb
echo "all done"
