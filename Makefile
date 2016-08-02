CC = g++
PWD = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
LIB = -L ${PWD}
OPENCV_LIB = `pkg-config --cflags --libs opencv`

main: main.cpp
	${CC} -std=c++11 ${LIB} -g -o main main.cpp ${OPENCV_LIB} -lX11


clean:
	$(RM) *.o *.so 
