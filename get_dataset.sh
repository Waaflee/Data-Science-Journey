#!/bin/bash
echo "Downlading brazilian coffee fields dataset..."
wget http://www.patreo.dcc.ufmg.br/wp-content/uploads/2017/11/brazilian_coffee_dataset.zip
unzip brazilian_coffee_dataset.zip

mv brazilian_coffee_scenes/* .
rmdir brazilian_coffee_scenes
rm fold*/Thumbs.db

mkdir test
mkdir training
mv fold5 test/data
mv fold5.txt test/data.txt

mkdir -p test/data/{coffee,noncoffee}
mkdir -p training/data/{coffee,noncoffee}

cat fold*.txt >> training/data.txt
rm fold*.txt

mv fold*/*.jpg training/data
rmdir fold*

echo "Splitting in training and test folders..."

cd training
../../utils/prepare_dataset.py

cd ..

cd test
../../utils/prepare_dataset.py

mkdir data
mv training data/
mv test data/

echo "Brazilian coffee fields dataset, downloaded and prepared!"