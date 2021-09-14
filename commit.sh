for i in $(seq 1 50000); do
	echo "$i" >> do_not_read_me_4.txt
	git add .
	git commit -m "NEW-$i: $i"
done
