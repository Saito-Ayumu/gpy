#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2025 Ayumu Saito
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違います
	res=1
}

res=0

set -eu

out=$(echo "A B D A" | ./gpa.py)
["$out" = "2.00"]

