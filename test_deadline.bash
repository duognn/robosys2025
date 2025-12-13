#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 DUONG HUYEN
# SPDX-License-Identifier: GPL-3.0-only 

res=0

### NORMAL INPUT ###
out=$(./deadline_sorter < test_input.txt)
if [ -z "$out" ]; then
    res=1
fi

line_count=$(echo "$out" | wc -l)
if [ "$line_count" -ne 3 ]; then
    res=1
fi

if ! echo "$out" | grep -q "days left"; then
    res=1
fi

### EMPTY INPUT ###
./deadline_sorter < /dev/null > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
    res=1 
fi

### INVALID FORMAT ###
echo "task_without_date" | ./deadline_sorter > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
    res=1
fi

[ $res -eq 0 ] && echo "All tests passed"
exit $res
