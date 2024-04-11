# Check for NVIDIA GPU
lspci | grep -i nvidia

# Check NVIDIA driver version
nvidia-smi

# Check CUDA Toolkit version
nvcc --version

# Set CUDA paths
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# Run deviceQuery from CUDA samples
cd /usr/local/cuda/samples/1_Utilities/deviceQuery
make
./deviceQuery
