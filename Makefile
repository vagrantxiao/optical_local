# Makefile for Optical of Rosetta benchmarks
#
# Author: Yuanlong Xiao (ylxiao@seas.upenn.edu)
#
# Targets:
#   all   - Compiles for local host (for debugging purposes).
#   clean - Removes all build products.


.PHONY: all 

all:
	g++ -I /home/ylxiao/Xilinx/Vivado/2018.2/include -o Test_host  ./sdsoc/*.cpp ./host/*.cpp ./imageLib/*.cpp  -O3 -DPROFILE
	./Test_host  -p ./datasets/current/ -o ./datasets/current/out.flo
	rm ./Test_host


clean:
	rm -rf ./Test


















