## GCC and OTHER OPTION Setting

export CC=$(CROSS_COMPILE)gcc

export AR=$(CROSS_COMPILE)ar

export RANLIB=$(CROSS_COMPILE)ranlib


CFLAGS = -O2 -Wall -g


## Exec Program Directory 

DESTDIR = work











