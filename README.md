# What is it

A working setup for maintaining local ComfyUI setup with uv, a modern Python package manager takes away all the headaches of using conda/pip/poetry. This configuration

- Supports Nvidia 5090
- CUDA 1.30

# How to use it

To use it for your ComfyUI:

- Copy pyproject.toml and updater.sh to your existing ComfyUI repo
- Run updater.sh - it will pull newest ComfyUI and custom-nodes

# Troubleshooting

## Black output from Qwen models with Sageattention

Use KJNodes "Patch Sage Attention" node with sageattn_qk_int8_pv_fp16_cuda backend instead.

