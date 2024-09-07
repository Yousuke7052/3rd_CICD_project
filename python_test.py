from PIL import Image
import sys

input_image = sys.argv[1]
output_image = sys.argv[2]

# 打开图像文件
with Image.open(input_image) as img:
    # 转换为灰度图像
    img_gray = img.convert('L')
    # 保存处理后的图像
    img_gray.save(output_image)

print(f"Image processed and saved as {output_image}")
