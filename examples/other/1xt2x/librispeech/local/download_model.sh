#! /usr/bin/env bash

if [ $# != 1 ];then
    echo "usage: ${0} ckpt_dir"
    exit -1
fi

ckpt_dir=$1

. ${MAIN_ROOT}/utils/utility.sh

URL='https://deepspeech.bj.bcebos.com/eng_models/librispeech_v1.8_to_v2.x.tar.gz'
MD5=a06d9aadb560ea113984dc98d67232c8
TARGET=${ckpt_dir}/librispeech_v1.8_to_v2.x.tar.gz


echo "Download LibriSpeech model ..."
download $URL $MD5 $TARGET
if [ $? -ne 0 ]; then
    echo "Fail to download LibriSpeech model!"
    exit 1
fi


exit 0
