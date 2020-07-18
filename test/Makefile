CXX = g++
CXXFLAGS = -g -Wall -std=c++14 -c -fPIC

ALL = none logic runtime invalid

all: $(ALL)

none:
	$(CXX) $(CXXFLAGS) -o target/test.error.none.o source/test.error.none.cpp
	${CXX} target/test.error.none.o -shared -o target/test.error.none.l

logic:
	$(CXX) $(CXXFLAGS) -o target/test.error.logic.o source/test.error.logic.cpp
	${CXX} target/test.error.logic.o -shared -o target/test.error.logic.l

runtime:
	$(CXX) $(CXXFLAGS) -o target/test.error.runtime.o source/test.error.runtime.cpp
	${CXX} target/test.error.runtime.o -shared -o target/test.error.runtime.l

invalid:
	touch target/test.error.invalid.l
