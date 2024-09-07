# 3rd_CICID_project
Practice CICD project by myself

設計了一個小型實踐項目，適合無經驗的單人操作，項目中除了代碼倉庫使用了Github之外，其餘全部使用了阿里云的產品，項目考慮的低花費，並且避免涉及敏感信息，


項目目標：創建一個靜態代碼分析工具，用於檢查文本文建的內容(例如:單詞數量，字符數等)


目標流程:
    1.OSS中以上傳好靜態文件
    2.ECS從OSS下載文件
    3.ECS文件與代碼上傳到GitHub，觸發DevOps流水線執行任務


1.OSS上傳文件
  1-1.準備test.txt文件
  
2.ECS從OSS下載文件
  2-1.安裝ossutil
  2-2.RAM創建一個用戶，權限須開放OSS
  2-3.配置ossutil環境參數:
      -> 包含AccessKey ID, AccessKey Secret, endpoint, bucket_name
  2-4.透過官方指令從oss下載文件到ECS中
  2-5.準備analyze.sh
  
3.ECS上傳文件至GitHub觸發DevOps
  3-1.DevOps與遠程倉庫的關聯參考2rd_CICI_project
  3-2.流水線執行命令為./analyze.sh
