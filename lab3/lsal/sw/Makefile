CFLAG:= -O3 -mavx2 -fsanitize=address

all: optimized unoptimized arm unoptimized_arm

optimized: optimized/lsal_optimized.cpp
	gcc -g optimized/lsal_optimized.cpp -o output_x86/lsal_x86_optimized $(CFLAG)

debug: optimized/lsal_optimized.cpp
	gcc -g optimized/lsal_optimized.cpp -o output_x86/lsal_debug -D DEBUG
	./lsal_debug 8 9

arm: optimized/lsal_optimized.cpp
	/opt/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++ -o output_arm/lsal_sw_arm_optimized optimized/lsal_optimized.cpp -Wall -O3 -g -std=c++11

unoptimized_arm: unoptimized/lsal_unoptimized.cpp
	/opt/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++ -o output_arm/lsal_sw_arm_unoptimized unoptimized/lsal_unoptimized.cpp -Wall -O3 -g -std=c++11

valgrind: optimized
	valgrind --tool=callgrind output_x86/lsal_sw_x86 32 65536
	kcachegrind ./callgrind.out*
	rm call*

unoptimized: unoptimized/lsal_unoptimized.cpp
	gcc -g unoptimized/lsal_unoptimized.cpp -o output_x86/lsal_x86_unoptimized $(CFLAG)
