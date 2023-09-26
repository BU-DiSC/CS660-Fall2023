#!/bin/bash

set -x
cp  ../../Dropbox/Professional/Professorship/0_CLASSES/CS660-Fall2023/Slides-PDF/CS660-Fall2023-Class*.pdf slides/

if [ $# -ne 0 ]; then
    echo "Only copying, no pushing."
    exit
fi

git pull

if [ $? -ne 0 ]; then
    echo "Please ensure manually that pull resulted in a sane repo. Exiting ..."
    exit
fi
git add slides/*
git commit -m "CS660: adding new slides"
git push
set +x
