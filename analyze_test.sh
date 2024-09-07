#!/bin/bash

# 指定图片所在的目录
INPUT_DIR="."

# 指定Python脚本的路径
PYTHON_SCRIPT="./python_test.py"

# 遍历目录中的所有.png文件
for INPUT_IMAGE in $(find "$INPUT_DIR" -maxdepth 1 -type f -name "*.png"); do
    if [ -f "$INPUT_IMAGE" ]; then
        echo "Processing file: $INPUT_IMAGE"
        OUTPUT_IMAGE="${INPUT_IMAGE%.*}_processed.png"
        
        # 使用Python处理图片
        python3 "$PYTHON_SCRIPT" "$INPUT_IMAGE" "$OUTPUT_IMAGE"
        
        echo "Processed image saved as $OUTPUT_IMAGE"
    fi
done
