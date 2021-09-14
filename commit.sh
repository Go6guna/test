for j in $(seq 401 500); do
	git checkout -b issue/COMMIT-$j-branch
		for i in $(seq 1 100); do
			echo "$i" >> do_not_read_me_$j.txt
			git add .
			git commit -m "COMMIT-$i: $i + $j = $((i + j))"
		done
	git push --set-upstream origin issue/COMMIT-$j-branch
	git checkout master --force
done


