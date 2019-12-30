# docker-myokit-opencl
Dockerized OpenCL Mesa ICD for Myokit 

First you need docker

Build myokit-opencl container with
> docker build -t . myokit-opencl
(will run for some minutes)


In order to use it you need an input file in current directory
> docker run --rm --device=/dev/dri -v $(pwd):/ws -w /ws myokit-opencl myokit run example-ttp-7-transmural-plane.mmt 

