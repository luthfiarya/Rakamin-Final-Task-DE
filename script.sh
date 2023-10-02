path='/hdfs/data/data1'
name_of_directory='data1'

if [ -d $path ]
then
	echo "There is $name_of_directory Directory exist!"
else
	echo "$name_of_directory Directory not exist!"
	mkdir -p $path
fi
