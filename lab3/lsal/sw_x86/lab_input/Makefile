CFLAG:= -O3 -mavx2 -fsanitize=address

optimized: lsal_optimized.cpp
	gcc -g lsal_optimized.cpp -o lsal_sw_x86 $(CFLAG)

debug: lsal_optimized.cpp
	gcc -g lsal_optimized.cpp -o lsal_debug -D DEBUG
	./lsal_debug 8 9

arm: 
	/tools/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++ -o ./lsal_sw_arm ./lsal_optimized.cpp -Wall -O3 -g -std=c++11

valgrind: optimized
	valgrind --tool=callgrind ./lsal_sw_x86 32 65536
	kcachegrind ./callgrind.out*
	rm call*

unoptimized:
	gcc -g lsal_unoptimized.cpp -o lsal_sw_x86_unoptimized $(CFLAG)

rm:
	rm lsal_sw_x86
	rm lsal_sw_arm
	rm call*