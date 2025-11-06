#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 duogg　　　　　
# SPDX-License-Identifier: GPL-3.0-only

ng () {
	echo ${1} 1st miss
	res=1
}
res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
