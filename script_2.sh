path='/hdfs/data/data1'
name_of_directory='data1'
filename_excel='daily_market_price.xlsx'
source_dir='/local/data/market'
target_dir=$path

if [ -d $path ]
then
	echo "There is $name_of_directory Directory exist!"
	cp $source_dir/$filename_excel $target_dir/
	echo "File moved successfully" >> $target_dir/status.log
else
	echo "$name_of_directory Directory not exist!"
	mkdir -p $path
fi
