from PIL import Image

def process_image(input_path, output_path):
    try:
        # 打开图像文件
        img = Image.open(input_path)
        
        # 获取图像的基本信息
        width, height = img.size
        print(f"Image size: {width}x{height}")
        
        # 对图像进行一些简单的处理（例如调整大小）
        resized_img = img.resize((width // 2, height // 2))
        
        # 保存处理后的图像
        resized_img.save(output_path)
        print(f"Processed image saved as {output_path}")
    except FileNotFoundError:
        print(f"Input file '{input_path}' not found.")
    except IOError as e:
        print(f"IOError: {e}")
    except Exception as e:
        print(f"Unexpected error: {e}")

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) != 3:
        print("Usage: python3 python_test.py <input_image> <output_image>")
        sys.exit(1)
    
    input_path = sys.argv[1]
    output_path = sys.argv[2]
    process_image(input_path, output_path)
