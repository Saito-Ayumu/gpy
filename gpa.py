#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2025 Ayumu Saito
# SPDX-License-Identifier: BSD-3-Clause

import sys

def get_score(grade):
    if grade == 'S':
        return 4
    elif grade == 'A':
        return 3
    elif grade == 'B':
        return 2
    elif grade == 'C':
        return 1
    elif grade == 'D':
        return 0
    else:
        return None

if sys.argv[1:]:
    grades_input = " ".join(sys.argv[1:])
else:
        grades_input = sys.stdin.read()

grades = grades_input.split()

total = 0
count = 0

for grade in grades:
    score = get_score(grade)
    if score is not None:
        total += score
        count += 1
    else:
        print(f"無効な成績を無視しました: {grade}")

if count > 0:
    gpa = total / count
    print("GPAは%.2f です" % gpa)
else:
    print("有効な成績が入力されていません")
    sys.exit(1)
