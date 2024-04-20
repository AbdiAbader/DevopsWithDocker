#!/bin/bash

if [ $# -ne 2 ]; then
    echo "please provide two arguments"
fi

git clone "https://github.com/$1"  repo
 
cd repo || exit

docker build . -t $2/img_2024_april_8


docker push $2/img_2024_april_8