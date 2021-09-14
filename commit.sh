for i in $(seq 1 50000); do
	echo "$i\n" >> do_not_read_me_too.txt
	git add .
	git commit -m "TEST-$i: $i"
done
