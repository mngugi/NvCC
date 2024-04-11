#include <stdio.h>

// CUDA kernel to print a greeting message
__global__ void cuda_greetings() {
    printf("Where are the greetings\n");
}

int main() {
    // Launch the kernel with 1 block and 1 thread
    cuda_greetings<<<1, 1>>>();
    
    // Ensure the kernel is executed before program exit
    cudaDeviceSynchronize();

    // Check for CUDA errors
    cudaError_t error = cudaGetLastError();
    if (error != cudaSuccess) {
        fprintf(stderr, "CUDA error: %s\n", cudaGetErrorString(error));
        return 1;
    }

    return 0;
}



