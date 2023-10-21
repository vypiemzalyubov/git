#!/bin/bash

cd folder
mkdir folder{1..3}
cd folder1
touch file{1..3}.txt file{4..5}.json
mkdir folder{4..6}
ls -la
cd ..
mv folder1/{file1.txt,file2.txt} folder2/
