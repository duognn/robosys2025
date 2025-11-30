#!/bin/bash 
# SPDX-FileCopyrightText: 2025 DUONG HUYEN
# SPDX-License-Identifier: GPL-3.0-only

today=$(date +%Y-%m-%d)

# Read all lines from stdin into an array
mapfile -t deadlines < <(grep -v '^$')

# Check if there is any input
if [ ${#deadlines[@]} -eq 0 ]; then
    echo "Error: no deadlines provided" >&2
    exit 1
fi

# Validate each line format: must be "task YYYY-MM-DD"
for line in "${deadlines[@]}"; do
    if ! [[ "$line" =~ ^[[:alnum:]_]+[[:space:]]+[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
        echo "Error: invalid line format: $line" >&2
        exit 1
    fi
done

# Sort deadlines by date (assuming each line starts with YYYY-MM-DD)
sorted_deadlines=$(printf "%s\n" "${deadlines[@]}" | sort -k2)

# Print sorted deadlines with days left
while read -r line; do
    task=$(echo "$line" | awk '{print $1}')
    dline=$(echo "$line" | awk '{print $2}')
    
    today_sec=$(date -d "$today" +%s)
    dline_sec=$(date -d "$dline" +%s)
    
    diff_sec=$((dline_sec - today_sec))
    diff_day=$((diff_sec / 86400))
    
    echo "$task $dline ($diff_day days left)"
done <<<"$sorted_deadlines"

