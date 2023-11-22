SELECT * FROM balajifastfood;

--Penjualan Total per Jenis Item:
--1. Berapa total penjualan untuk setiap jenis item?
SELECT
    item_type,
    SUM(transaction_amount) AS [Total Penjualan]
FROM balajifastfood
GROUP BY item_type;

--Penjualan Total per Metode Transaksi:
--2. Berapa total penjualan untuk setiap metode transaksi?
SELECT
    transaction_type,
    SUM(transaction_amount) AS [Total Penjualan]
FROM balajifastfood
GROUP BY transaction_type;

--Rata-rata Harga Item per Jenis Item:
--3. Apa rata-rata harga untuk setiap jenis item?
SELECT
    item_type,
    AVG(item_price) AS [Rata-rata harga]    
FROM balajifastfood
GROUP BY item_type;

--Jumlah Transaksi per Penerima:
--4. Berapa jumlah transaksi yang diterima oleh setiap penerima?
SELECT
    received_by,
    COUNT(*) AS [Jumlah Transaksi]
FROM balajifastfood
GROUP BY received_by;

--Penjualan Total per Waktu Penjualan:
--5. Bagaimana penjualan terdistribusi pada berbagai waktu penjualan (pagi, siang, sore, malam, tengah malam)?
SELECT
    time_of_sale,
    COUNT(*) AS [Total Penjualan]
FROM balajifastfood
GROUP BY time_of_sale;

--Top 3 Item yang Paling Banyak Terjual:
--6. Apa top 3 item yang paling banyak terjual berdasarkan kuantitas?
SELECT TOP 3
    item_name,
    COUNT(quantity) AS [Total Terjual]
FROM balajifastfood
GROUP BY item_name
ORDER BY COUNT(quantity) DESC;

--Jumlah Transaksi per Jenis Item:
--7. Berapa jumlah transaksi untuk setiap jenis item?
SELECT
    item_type,
    COUNT(order_id) AS [Jumlah Transaksi]
FROM balajifastfood
GROUP BY item_type;


--Pengelompokan Transaksi per Bulan:
--8. Bagaimana tren penjualan berubah dari bulan ke bulan?
SELECT
    MONTH(date) AS Bulan,
    SUM(transaction_amount) AS [Total Penjualan]
FROM balajifastfood
GROUP BY MONTH(date)
ORDER BY MONTH(date);


