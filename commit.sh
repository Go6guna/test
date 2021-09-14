for i in $(seq 1 500000); do
	echo "Next $i commit\n" >> do_not_read_me.txt
	git add .
	git commit -m "TEST-$i: $i"
done
