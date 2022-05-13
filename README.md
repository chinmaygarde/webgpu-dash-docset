[Dash](https://kapeli.com/dash) Docset for [WebGPU Native](https://github.com/webgpu-native/webgpu-headers)
=============================

[Subscribe to the Docset Feed!](dash-feed://https%3A%2F%2Fpublic.chinmaygarde.com%2Fwebgpunative%2FWebGPUNative.xml)

To build the documentation for the WebGPU Native interface checkout out at [`webgpu-headers`](https://github.com/webgpu-native/webgpu-headers) as a sub-module, run `make`. The documentation will be generated at `build/com.chinmaygarde.webgpunative.docset`. Open the generated docset in [Dash](https://kapeli.com/dash).

![WebGPU Native Docset](/images/preview.png)

##Pre-requisites
----------------

* `git submodule update --init --recursive`
* Install `doxygen`
* Install `cmake`
* Install native C/C++ toolchain on host to compile `doxygen2docset`.
