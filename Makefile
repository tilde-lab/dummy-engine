APPNAME := dummyengine
CXX_COMPILER := g++
MINGW_CXX_COMPILER = i686-w64-mingw32-g++

.PHONY: clean

clean:
	@rm -f $(APPNAME) $(APPNAME).exe

$(APPNAME): src/main.cpp
	$(CXX_COMPILER) -o $@ src/main.cpp -static-libgcc -Wl,-Bstatic -lstdc++ -lm -Wl,-Bdynamic -Wl,--as-needed
	strip $@

$(APPNAME).exe: src/main.cpp
	$(MINGW_CXX_COMPILER) -o $@ src/main.cpp -static-libgcc -Wl,-Bstatic -lstdc++ -lwinpthread -Wl,-Bdynamic -Wl,--as-needed
