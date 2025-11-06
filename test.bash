#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 duogg　　　　　
# SPDX-License-Identifier: GPL-3.0-only

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"
  　 
out=$(echo あ | ./plus)    
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"          out=$(echo | ./plus)             
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO"
  　 
[ "$res" = 0 ] && echo OK
exit $res
