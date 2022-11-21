APPNAME := dummyengine

.PHONY: clean

clean:
	@rm -f $(APPNAME) $(APPNAME).exe

$(APPNAME): src/main.cpp
	g++ -o $@ src/main.cpp -static-libgcc -Wl,-Bstatic -lstdc++ -lm -Wl,-Bdynamic -Wl,--as-needed
	strip $@

$(APPNAME).exe: src/main.cpp
	i686-w64-mingw32-c++ -o $@ src/main.cpp -static-libgcc -Wl,-Bstatic -lstdc++ -lwinpthread -Wl,-Bdynamic -Wl,--as-needed
