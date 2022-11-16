#!/bin/bash
# SPDX-FileCopyrightText: 2022 Yoshihiro Ogishima
# SPDX-Licende-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 3 | ./plus)
[ "${out}" = 6 ] || ng ${LINENO}

out=$(seq 3 | sed '3a -2' | ./plus)
[ "${out}" = 4 ] || ng ${LINENO}

out=$(seq 3 | sed '3a *4' | ./plus)
[ "${out}" = 24 ] || ng ${LINENO}

out=$(seq 3 | sed '3a /3' | ./plus)
[ "${out}" = 2.0 ] || ng ${LINENO}

out=$(echo '>a' | ./plus)
[ "${out}" = 'a' ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo '#' | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo '+-1' | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo '*/1' | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK!
exit $res
