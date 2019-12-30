FROM fedora:31
RUN dnf install -y clinfo python3-devel gcc libdrm-devel mesa-dri-drivers opencl-headers ocl-icd-devel
RUN pip3 install myokit 
# Leave only the mesa icd around
RUN rm /etc/OpenCL/vendors/pocl.icd
