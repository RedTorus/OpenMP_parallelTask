run_small:
	gcc -O2 triangle.c -o triangle.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./triangle.x 10

run_small_par:
	gcc -O2 tri_task.c -o tri_task.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_task.x 10

run_medium:
	gcc -O2 triangle.c -o triangle.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./triangle.x 10

run_medium_par:
	gcc -O2 tri_task.c -o tri_task.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_task.x 10

run_large:
	gcc -O2 triangle.c -o triangle.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./triangle.x 10

run_large_par:
	gcc -O2 tri_task.c -o tri_task.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_task.x 10

cleanup:
	rm -rf *~
	rm -rf *.x

run_cases:
	bash run_tri_task.sh