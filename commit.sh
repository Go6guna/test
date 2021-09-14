for i in $(seq 1 50000); do
	echo "$i" >> do_not_read_me_5.txt
	git add .
	git commit -m "NOT-$i: $i"
done
