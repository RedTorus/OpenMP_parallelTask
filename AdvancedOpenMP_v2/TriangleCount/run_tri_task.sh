#!/bin/bash
# run_tri_task.sh

echo "Script starting..."

# List of thread counts to test (common for all scenarios)
THREADS_LIST=(1 2 4 8 16)

######################################
# Small Scenario
######################################
echo "=== Running Small Scenario ==="
gcc -O2 tri_task.c -o tri_task.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp

for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Small: Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    export OMP_NUM_THREADS=${threads}
    # Pipe the concatenated small input files into the executable
    cat small_IA.txt small_JA.txt | ./tri_task.x 10
done

######################################
# Medium Scenario
######################################
echo "=== Running Medium Scenario ==="
gcc -O2 tri_task.c -o tri_task.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp

for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Medium: Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    export OMP_NUM_THREADS=${threads}
    # Pipe the concatenated medium input files into the executable
    cat medium_IA.txt medium_JA.txt | ./tri_task.x 10
done

######################################
# Large Scenario
######################################
echo "=== Running Large Scenario ==="
gcc -O2 tri_task.c -o tri_task.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp

for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Large: Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    export OMP_NUM_THREADS=${threads}
    # Pipe the concatenated large input files into the executable
    cat large_IA.txt large_JA.txt | ./tri_task.x 10
done

echo "Script finished."