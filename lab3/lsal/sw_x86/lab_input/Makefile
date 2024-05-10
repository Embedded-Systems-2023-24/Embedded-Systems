CFLAG:= -O3 -mavx2

optimized: lsal_optimized.cpp
	gcc -g lsal_optimized.cpp -o lsal $(CFLAG)

valgrind: optimized
	valgrind --tool=callgrind ./lsal 32 65536
	kcachegrind ./callgrind.out*
	rm call*

unoptimized:
	gcc -g lsal_unoptimized.cpp -o lsal $(CFLAG)

rm:
	rm lsal
	rm call*