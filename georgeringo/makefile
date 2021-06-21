CLEANEXTS = o dylib
SOURCES = george.cpp ringo.cpp georgeringo.cpp
OUTPUTFILE = libgeorgeringo.dylib
INSTALLDIR = ../bin

all: $(OUTPUTFILE)

$(OUTPUTFILE): george.o ringo.o georgeringo.o
	$(CXX) -shared -fPIC $(LDFLAGS) -o $@ $^

george.o: george.cpp george.hpp
ringo.o: ringo.cpp ringo.hpp
georgeringo.o: georgeringo.cpp georgeringo.hpp

install: $(OUTPUTFILE)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

uninstall:
	rm -f $(INSTALLDIR)/$(OUTPUTFILE)	

clean:
	rm -f george.o ringo.o georgeringo.o $(OUTPUTFILE)

