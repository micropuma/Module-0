#!/bin/bash

# 激活 Python 虚拟环境（如果需要的话）
# source /path/to/your/venv/bin/activate

# 使用 pip 安装 requirements.txt 依赖
python -m pip install -r requirements.txt

# 使用 pip 安装 requirements.extra.txt 依赖（如果存在）
if [ -f requirements.extra.txt ]; then
    python -m pip install -r requirements.extra.txt
fi

# 使用 conda 安装 llvmlite
conda install -y llvmlite

python -m pip install -Ue .

echo "所有依赖安装完成！"

