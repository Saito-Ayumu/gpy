#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2025 Ayumu Saito
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違います
	res=1
}

res=0

out=$(echo "A B D A" | ./gpa)
[ "${out}" = "2.00" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
