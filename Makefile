main: clean
	doxygen
	cmake -S doxygen2docset -B build
	cmake --build build
	./build/source/doxygen2docset --doxygen docs/html --docset build
	cd build && tar -czvf com.chinmaygarde.webgpunative.docset.tar.gz com.chinmaygarde.webgpunative.docset

clean:
	rm -rf docs
	rm -rf build
