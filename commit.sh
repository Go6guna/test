for i in $(seq 1 26000); do
	echo "$i" >> do_not_read_me_dvcs.txt
	git add .
	git commit -m "DVCS-$i: $i"
done
