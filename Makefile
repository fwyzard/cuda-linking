# When building a library with CUDA code we should support diverse scenarios,
# where the CUDA code in the library may be used by:
#   - host code in the library itself (i.e. a kernel defined and used within the library)
#   - host code in a user program or library (i.e. a kernel defined in the library)
#   - CUDA code in a user program or library (i.e. __device__ code in the library)

.PHONY: clean nvcc nvlink clang

clean:
	rm -f */*.o *.o *.a *.so app*

nvcc: Makefile.nvcc
	make -f Makefile.nvcc

nvlink: Makefile.nvlink
	make -f Makefile.nvlink

clang: Makefile.clang
	make -f Makefile.clang

single: Makefile.single
	make -f Makefile.single
