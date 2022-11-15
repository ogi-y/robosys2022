#!/bin/bash
# SPDX-FileCopyrightText: 2022 Yoshihiro Ogishima
# SPDX-Licende-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/O TEST ###
out=$(cat input_sample | ./plus)
[ "${out}" = 5 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK!
exit $res
