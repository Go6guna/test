for j in $(seq 1 100); do
	git checkout -b issue/RRR-$j-branch
		for i in $(seq 1 100); do
			echo "$i" >> do_not_read_me_$j_R.txt
			git add .
			git commit -m "RRR-$i: $i + $j = $((i + j))"
		done
	git push --set-upstream origin issue/RRR-$j-branch
	git checkout master --force
done


