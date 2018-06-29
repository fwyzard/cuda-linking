# When building a library with CUDA code we should support diverse scenarios,
# where the CUDA code in the library may be used by:
#   - host code in the library itself (i.e. a kernel defined and used within the library)
#   - host code in a user program or library (i.e. a kernel defined in the library)
#   - CUDA code in a user program or library (i.e. __device__ code in the library)

.PHONY: clean all nvcc nvlink clang single

all: nvcc nvlink clang single

clean:
	rm -rf build.*

nvcc nvlink clang single: %: Makefile.%
	$(MAKE) -f $<
