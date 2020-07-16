CC = g++
CFLAGS = -Wall -std=c++14 -c -fPIC

ALL = none logic runtime invalid

all: $(ALL)

none:
	$(CC) $(CFLAGS) -o target/test.error.none.o source/test.error.none.cpp
	${CC} target/test.error.none.o -shared -o target/test.error.none.l

logic:
	$(CC) $(CFLAGS) -o target/test.error.logic.o source/test.error.logic.cpp
	${CC} target/test.error.logic.o -shared -o target/test.error.logic.l

runtime:
	$(CXX) $(CFLAGS) -o target/test.error.runtime.o source/test.error.runtime.cpp
	${CC} target/test.error.runtime.o -shared -o target/test.error.runtime.l

invalid:
	touch target/test.error.invalid.l
