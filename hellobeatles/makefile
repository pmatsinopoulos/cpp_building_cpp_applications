SOURCES = hellobeatles.cpp
OUTPUTFILE = hellobeatles
LIBJOHNPAUL = libjohnpaul.a
LIBGEORGERINGO = libgeorgeringo.dylib
JOHNPAULDIR = ../johnpaul
GEORGERINGODIR = ../georgeringo
INSTALLDIR = ../bin
CPPFLAGS += -I$(JOHNPAULDIR) -I$(GEORGERINGODIR)

all: $(OUTPUTFILE)

$(OUTPUTFILE): hellobeatles.o \
				$(JOHNPAULDIR)/$(LIBJOHNPAUL) \
				$(GEORGERINGODIR)/$(LIBGEORGERINGO)
	$(CXX) $(LDFLAGS) -o $@ $^

hellobeatles.o: hellobeatles.cpp

install: $(OUTPUTFILE)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

uninstall:
	rm -f $(INSTALLDIR)/$(OUTPUTFILE)	

clean:
	rm -f *.o $(OUTPUTFILE)

