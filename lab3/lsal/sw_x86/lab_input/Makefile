CFLAG:= -O3 -mavx2 -fsanitize=address

all: optimized unoptimized arm unoptimized_arm

optimized: lsal_optimized.cpp
	gcc -g lsal_optimized.cpp -o lsal_sw_x86 $(CFLAG)

debug: lsal_optimized.cpp
	gcc -g lsal_optimized.cpp -o lsal_debug -D DEBUG
	./lsal_debug 8 9

arm: lsal_optimized.cpp
	/opt/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++ -o ../../sw_arm/lsal_sw_arm_optimized ./lsal_optimized.cpp -Wall -O3 -g -std=c++11

unoptimized_arm: lsal_unoptimized.cpp
	/opt/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++ -o ../../sw_arm//lsal_sw_arm_unoptimized ./lsal_unoptimized.cpp -Wall -O3 -g -std=c++11

valgrind: optimized
	valgrind --tool=callgrind ./lsal_sw_x86 32 65536
	kcachegrind ./callgrind.out*
	rm call*

unoptimized: lsal_unoptimized.cpp
	gcc -g lsal_unoptimized.cpp -o lsal_sw_x86_unoptimized $(CFLAG)

clear:
	-rm lsal_sw_x86
	-rm ../../sw_arm/lsal_sw_arm*
	-rm lsal_debug
	-rm call*
