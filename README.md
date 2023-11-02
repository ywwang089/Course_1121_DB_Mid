# 中山網路書店
[![GitHub release](https://img.shields.io/github/release/Text-Analytics-and-Retrieval/db_class2023)](https://github.com/Text-Analytics-and-Retrieval/db_class2023/releases/latest)
[![GitHub license](https://img.shields.io/github/license/Text-Analytics-and-Retrieval/db_class2023)](https://github.com/Text-Analytics-and-Retrieval/db_class2023/main/LICENSE)

一套使用Flask開發的網路書店系統，後端使用Oracle資料庫
<br>

## 功能
- 提供CRUD範例，並搭配資料分析功能。
- 以MVC架構開發。
- 一般消費者可以瀏覽、搜尋、購買商品，並查看訂單狀態。
- 後台管理者可以編輯商品，並檢視每筆訂單以及商品銷售圖表。

## 範例
點選以下連結體驗系統功能: https://bookstore.tarflow.com/
![image](https://user-images.githubusercontent.com/52253495/226426951-b1ef62d0-56ae-443f-9483-c06524b5fb12.png)


## 安裝
### 1. 取得原始碼
```bash
git clone https://github.com/Text-Analytics-and-Retrieval/db_class2023.git
cd db_class2023/
```
### 2. 建立環境
```bash!	
# <name> 請改為自訂的環境名稱，同學也可以自訂python 的版本，但要注意3.11版會有版本衝突的問題，不建議使用
conda create -n <name> python=3.10
```

### 3. 安裝環境
##### 安裝python套件
```bash
# <workspace> 請改為環境路徑
cd <workspace>
pip install -r requirements.txt
```


##### 修改程式碼

```python=
# 將link.py中的連線資訊（account、password）改為自己組別的帳密
connection = oracledb.connect(user='account', password='password', host='140.117.69.60', port=1521, service_name='ORCLPDB1') 
```

```python=
# 使Flask監聽所有介面
app.run(host='0.0.0.0')
```

### 4. 匯入SQL
- 打開 ebook.sql
- 將 SQL 檔裡面的 `GROUP19` 全部替換成 同學們自己的組別 ex: 第一組替換為 `GROUP1`
- 接著複製到 Oracle 上做執行，就可以得到一樣的資料了

### 5. 啟動程式
```python=
python app.py
```

## 使用
- 輸入http://localhost:15000/進入首頁。
- 首次使用請點選註冊按鈕，並註冊帳號。
- 註冊後，點選登入即可進入頁面。
