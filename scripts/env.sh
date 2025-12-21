#!/usr/bin/env bash
# pixi activation script - 自动设置 XRCE-DDS 环境变量

# 获取项目根目录
XRCE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
XRCE_INSTALL="$XRCE_ROOT/install"

# 设置库路径（运行时动态链接）
export LD_LIBRARY_PATH="$XRCE_INSTALL/lib:$XRCE_INSTALL/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

# 设置 CMake 查找路径（构建依赖 XRCE-DDS 的项目时使用）
export CMAKE_PREFIX_PATH="$XRCE_INSTALL${CMAKE_PREFIX_PATH:+:$CMAKE_PREFIX_PATH}"
