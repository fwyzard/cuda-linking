# Separate Compilation and Linking of CUDA C++ Device Code

See [the blog post](https://devblogs.nvidia.com/separate-compilation-linking-cuda-device-code/) for information.

Code forked from the [GitHub repository](https://github.com/parallel-forall/code-samples/tree/1c96aecd493aad0a8d1b4b64ddf12bc430af63c2/posts/separate-compilation-linking).

## Quick instructions

```bash
# clone the repository
git clone git@github.com:fwyzard/cuda-linking.git
cd cuda-linking

# build and link with nvcc
make clean nvcc
LD_LIBRARY_PATH=$PWD:$LD_LIBRARY_PATH ./app

# build with nvcc, link explicitly with nvlink/fatbin
make clean nvlink
LD_LIBRARY_PATH=$PWD:$LD_LIBRARY_PATH ./app

# build with clang, link explicitly with nvlink/fatbin
make clean clang
LD_LIBRARY_PATH=$PWD:$LD_LIBRARY_PATH ./app
```
