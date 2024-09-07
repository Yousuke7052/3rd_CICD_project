#!/bin/bash

# 检查是否提供了足够的参数
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <image-file>"
    exit 1
fi

INPUT_IMAGE=$1
OUTPUT_IMAGE=$(basename "$INPUT_IMAGE" .png)_processed.png

# 使用Python处理图片
python3 /path/to/your/image_processing_script.py "$INPUT_IMAGE" "$OUTPUT_IMAGE"

echo "Processed image saved as $OUTPUT_IMAGE"
