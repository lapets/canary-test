CXXFLAGS = -g -Wall -Wfatal-errors -std=c++14

ALL = none logic runtime

all: $(ALL)

none: source/test.error.none.cpp Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cpp

logic: source/test.error.logic.cpp Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cpp

runtime: source/test.error.runtime.cpp Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cpp

clean:
	$(RM) $(ALL) *.o

test: all
	bash test
