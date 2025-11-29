#!/bin/bash -xv

res=0

### NORMAL INPUT ###
out=$(./deadline_sorter.sh < test_input.txt)
echo "$out"
[ "$(echo "$out" | grep -c 'days left')" -eq 3 ] || res=1

### EMPTY INPUT ###
./deadline_sorter.sh < /dev/null
[ "$?" -eq 1 ] || res=1

### INVALID FORMAT ###
echo "task_without_date" | ./deadline_sorter.sh
[ "$?" -eq 1 ] || res=1

[ $res -eq 0 ] && echo "All tests passed"
exit $res

