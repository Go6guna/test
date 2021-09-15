for j in $(seq 1 1000); do
#	git checkout -b issue/COMMIT-$j-branch
		for i in $(seq 1 1); do
			echo "$i" >> dao_not_read_me_$j.txt
			git add .
			git commit -m "COT-$i: $i + $j = $((i + j))"
		done
#	git push --set-upstream origin issue/COMMIT-$j-branch
	git push
#	git checkout master --force
done

