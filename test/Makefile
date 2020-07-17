CXXFLAGS = -g -Wall -Wfatal-errors -std=c++14 -c -fPIC

ALL = none logic runtime

all: $(ALL)

none: source/test.error.none.cpp Makefile
	$(CXX) $(CXXFLAGS) -o source/test.error.none.o source/test.error.none.cpp

logic: source/test.error.logic.cpp Makefile
	$(CXX) $(CXXFLAGS) -o source/test.error.logic.o source/test.error.logic.cpp

runtime: source/test.error.runtime.cpp Makefile
	$(CXX) $(CXXFLAGS) -o source/test.error.runtime.o source/test.error.runtime.cpp

clean:
	$(RM) $(ALL) *.o
