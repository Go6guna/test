for i in $(seq 1 50000); do
	echo "$i" >> do_not_read_me_3.txt
	git add .
	git commit -m "ABC-$i: $i"
done
