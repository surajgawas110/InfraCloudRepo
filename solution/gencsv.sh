#/bin/bash

rm -rf inputFile

for i in {0..9}
do
	echo $i", "$RANDOM | cat >> inputFile
done

chmod 777 inputFile
