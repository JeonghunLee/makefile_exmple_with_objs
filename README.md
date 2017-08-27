## Sample Example Makefile
This sample makefile about main program with obj  is easy to make it.  


## File Structure 
<pre><code>$ tree -a 
├── MainTest.c
├── Makefile
├── README.md
├── Rule.make
├── sub1
│   ├── sub1_1.c
│   ├── sub1_1.h
│   ├── sub1_2.c
│   └── sub1_2.h
├── sub2
│   ├── sub2_1.c
│   ├── sub2_1.h
│   ├── sub2_2.c
│   └── sub2_2.h
├── tst1.c
├── tst1.h
├── tst2.c
└── tst2.h
</code></pre>


## Make Result 

<pre><code>$ make
$ make
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c sub1/sub1_1.c -o sub1/sub1_1.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c sub1/sub1_2.c -o sub1/sub1_2.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c sub2/sub2_1.c -o sub2/sub2_1.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c sub2/sub2_2.c -o sub2/sub2_2.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c tst1.c -o tst1.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c tst2.c -o tst2.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc -O2 -Wall -g /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I. -Isub1 -Isub2    -c MainTest.c -o MainTest.o
gcc: warning: /usr/lib/gcc/x86_64-linux-gnu/4.8/include: linker input file unused because linking not done
gcc  sub1/sub1_1.o sub1/sub1_2.o sub2/sub2_1.o sub2/sub2_2.o tst1.o tst2.o MainTest.o  -o MainTest	
</code></pre>

## Test Result 

Main Test Program 

<pre><code>$./MainTest 
 Main  TEST start
Main Layer - TEST01
SUB1_01 TEST
SUB1_02 TEST
 Main Layer - TEST02
SUB2_01 TEST 
SUB2_02 TEST
 Main  TEST finished
</code></pre>
