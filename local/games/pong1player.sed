#!/bin/sed -f
#!sgx/sgx -u 150000
1{
s/.*/\
\
\
\
\
\
\
\
\
\
\
\
\
/
h
s/.*/UL8888888888/
H
s/.*/8          8/
H
H
H
H
H
H
H
s/.*/8    O     8/
H
s/.*/,  ####/g
H
}
H
g
/U/{
s/\(8          8\)\n8\( *\)O\( *\)8/8\2O\38\
\1/
t down
s/U/D/
:down
}
/D/{
s/8\( *\)O\( *\)8\n\(8          8\)/\3\
8\1O\28/
t up
s/8\( *\)O\( *\)8\n,\( *\)####\(.*\)/8\1O\28\
,\3####\4\
K\2\3K/
/K \{6,9\}K/b swap
s/.*/\
\
\
\
\
\
\
\
   !! OOPS  !!\
\
\
\
/
q
:swap
s/D/U/
:up
}
/L/{
s/ O/O /
t left
s/L/R/
:left
}
/R/{
s/O / O/
t right
s/R/L/
:right
}
y/ZX/zx/
/z/{
s/, /,/
}
/x/{
s/,/, /
s/,        /,       /
}
s/####.*/####\
\
/
h
