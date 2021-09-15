git fetch
git reset origin/master --hard
git pull
for j in $(seq 1 100); do
#	git checkout -b issue/COMMIT-$j-branch

	for i in $(seq 1 10); do
		echo "$i" >> do_not_read_me_$j_r2.txt
		git add .
		git commit -m "RAND-$i: $i + $j = $((i + j))"
	done

#	git push --set-upstream origin issue/COMMIT-$j-branch
	git push
#	git checkout master --force
done


