#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2025 Ayumu Saito
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違います
	res=1
}

res=0

out=$(echo "A B D A" | ./gpa.py)
["$out" = "2.00"]

if echo "A X" | ./gpy >/dev/null 2>/dev/null; then
exit $res
