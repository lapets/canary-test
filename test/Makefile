CXXFLAGS = -g -Wall -Wfatal-errors -std=c++14 -c -fPIC

ALL = none logic runtime

all: $(ALL)

none: source/test.error.none.cpp Makefile
	$(CXX) $(CXXFLAGS) -o source/test.error.none.o source/test.error.none.cpp
	${CXX} source/test.error.none.o -shared -o target/test.error.none.l

logic: source/test.error.logic.cpp Makefile
	$(CXX) $(CXXFLAGS) -o source/test.error.logic.o source/test.error.logic.cpp
	${CXX} source/test.error.logic.o -shared -o target/test.error.logic.l

runtime: source/test.error.runtime.cpp Makefile
	$(CXX) $(CXXFLAGS) -o source/test.error.runtime.o source/test.error.runtime.cpp
	${CXX} source/test.error.runtime.o -shared -o target/test.error.runtime.l

clean:
	$(RM) $(ALL) *.o
