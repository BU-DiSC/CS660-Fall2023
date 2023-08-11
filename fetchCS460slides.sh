#!/bin/bash

set -x
cp  ../../Dropbox/Professional/Professorship/0_CLASSES/CS460-Fall2021/slides-pdf/CS460-Fall2021-Class*.pdf slides/

git pull

if [ $? -ne 0 ]; then
    echo "Please ensure manually that pull resulted in a sane repo. Exiting ..."
    exit
fi
git add slides/*
git commit -m "CS460: adding new slides"
git push
set +x
