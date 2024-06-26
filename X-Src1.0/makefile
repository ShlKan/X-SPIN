# SPIN - Verification Software - Version 6.4 - December 2014
#
# Copyright  (c) 1989-2006 Lucent Technologies, Bell Labs
# Extensions (c) 2006-2014 NASA/JPL California Institute of Technology
# All Rights Reserved. For educational purposes only.
# No guarantee whatsoever is expressed or implied by
# the distribution of this code.
#
# Written by:    Gerard J. Holzmann
# Documentation: http://spinroot.com/
# Bug-reports:   bugs@spinroot.com 
# or:            http://spinroot.com/forum/

# see also ./make_pc for a simpler script not requiring make

CC=gcc
# CC=gcc -m32 		# 32bit compilation on a 64bit system

CFLAGS=-O2 -DNXT -g	# on some systems add: -I/usr/include
			# on a PC:    add -DPC
			# on Solaris: add -DSOLARIS
			# on a Mac:   add -DMAC
			# on HP-UX:   add -Aa

# CFLAGS=-pg -g -DNXT

# for a more picky compilation use gcc-4 and add:
PICKY=-std=c99 -Wstrict-prototypes -pedantic -fno-strength-reduce \
	-fno-builtin -W -Wshadow -Wpointer-arith \
	-Wcast-qual -Winline -Wall

# when running spin with a different compiler:
			# on OS2:         spin -Picc -E/Pd+ -E/Q+
			# for Visual C++: spin -PCL  -E/E

YACC=yacc		# on Solaris: /usr/ccs/bin/yacc
YFLAGS=-v -d 		# creates y.output and y.tab.h

SPIN_OS= spinlex.o sym.o vars.o main.o msc_tcl.o \
	mesg.o flow.o sched.o run.o pangen1.o pangen2.o \
	pangen3.o pangen4.o pangen5.o guided.o dstep.o \
	structs.o pangen6.o pangen7.o reprosrc.o

TL_OS=	tl_parse.o tl_lex.o tl_main.o tl_trans.o tl_buchi.o \
	tl_mem.o tl_rewrt.o tl_cache.o

spin:	$(SPIN_OS) $(TL_OS) spin.o
	$(CC) $(CFLAGS) -o spin_x spin.o $(SPIN_OS) $(TL_OS)

spin.o:	spin.y
	$(YACC) $(YFLAGS) spin.y
	$(CC) $(CFLAGS) -c y?tab.c
	mv y?tab.o spin.o

$(SPIN_OS): spin.h spin.o

$(TL_OS): tl.h spin.o

main.o pangen2.o msc_tcl.o: version.h
pangen1.o: pangen1.h pangen3.h pangen6.h
pangen2.o: pangen2.h pangen4.h pangen5.h pangen7.h

clean:
	rm -f spin *.o y?tab.[ch] y.output y.debug
	rm -f pan.[chmotb] a.out core *stackdump
