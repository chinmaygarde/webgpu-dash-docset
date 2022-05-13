main: clean
	doxygen
	cmake -S doxygen2docset -B build
	cmake --build build
	./build/source/doxygen2docset --doxygen docs/html --docset build

clean:
	rm -rf docs
	rm -rf build
