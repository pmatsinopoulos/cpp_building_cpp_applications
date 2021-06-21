CLEANEXTS = o a
OUTPUTFILE = libjohnpaul.a
INSTALLDIR = ../bin

all: $(OUTPUTFILE)

$(OUTPUTFILE): john.o paul.o johnpaul.o
	ar ru $@ $^
	ranlib $@

john.o: john.cpp john.hpp
paul.o: paul.cpp paul.hpp
johnpaul.o: johnpaul.cpp johnpaul.hpp

install: $(OUTPUTFILE)
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

uninstall:
	rm -f $(INSTALLDIR)/$(OUTPUTFILE)	

clean:
	for file in $(CLEANEXTS); do rm -f *.$$file; done
