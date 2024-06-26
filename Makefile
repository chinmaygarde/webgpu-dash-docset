build: clean
	doxygen
	cmake -S doxygen2docset -B build
	cmake --build build
	./build/source/doxygen2docset --doxygen docs/html --docset build
	cd build && tar -czvf com.chinmaygarde.webgpunative.docset.tar.gz com.chinmaygarde.webgpunative.docset

upload: build
	gsutil cp build/com.chinmaygarde.webgpunative.docset.tar.gz gs://public.chinmaygarde.com/webgpunative/
	gsutil cp WebGPUNative.xml gs://public.chinmaygarde.com/webgpunative/

sync:
	git submodule update --init --recursive
	cd webgpu-headers && git checkout main && git pull --rebase origin main

clean:
	rm -rf docs
	rm -rf build
