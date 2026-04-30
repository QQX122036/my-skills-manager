#!/bin/bash

# ========================================
#   Skills Manager 启动器
# ========================================

echo "========================================"
echo "  Skills Manager Launcher"
echo "========================================"
echo ""

# 设置 Rust 路径 (macOS/Linux)
export PATH="$HOME/.cargo/bin:$PATH"

# 检查 Rust
if ! command -v cargo &> /dev/null; then
    echo "[Error] Rust toolchain not found"
    echo "Install: curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y"
    exit 1
fi

# 检查 Node
if ! command -v node &> /dev/null; then
    echo "[Error] Node.js not found"
    exit 1
fi

echo "[OK] Environment check passed"
echo ""

# 启动 Tauri 开发模式
echo "[Info] Starting Skills Manager..."
npm run tauri:dev