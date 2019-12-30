FROM fedora:31
RUN dnf install -y clinfo python3-devel gcc libdrm-devel mesa-dri-drivers opencl-headers ocl-icd-devel
RUN pip3 install myokit 
RUN rm /etc/OpenCL/vendors/pocl.icd
COPY example-ttp-7-transmural-plane.mmt /tmp/
