#!/usr/bin/bash
DATA=/home/zhanghao/my_source/caffe/data/re
MY=/home/zhanghao/my_source/caffe/examples/myfile
echo "Create train.txt..."
rm -rf $MY/train.txt
for i in 3 4 5 6 7
do
	find $DATA/train -name $i*.jpg | cut -d '/' -f8-9 | sed "s/$/ $i/">>$MY/train.txt
done
echo "create test.txt..."
rm -rf $MY/test.txt 
for i in 3 4 5 6 7
do
	find $DATA/test -name $i*.jpg | cut -d '/' -f8-9 | sed "s/$/ $i/">>$MY/test.txt
done
echo "all done"
