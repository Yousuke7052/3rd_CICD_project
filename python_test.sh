from PIL import Image
import sys

def process_image(input_path, output_path):
    try:
        img = Image.open(input_path)
        # 转换为灰度图像，并保留alpha通道
        img_gray = img.convert('LA')
        # 保存处理后的图像
        img_gray.save(output_path)
        print(f"Processed {input_path} and saved as {output_path}")
    except Exception as e:
        print(f"Error processing {input_path}: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 process_image.py <input> <output>")
        sys.exit(1)
    
    input_path, output_path = sys.argv[1], sys.argv[2]
    process_image(input_path, output_path)
