/*
 
 Source Server         : DBSE
 Source Server Type    : Oracle
 Source Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 Source Schema         : DBSE

 Target Server Type    : Oracle
 Target Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 File Encoding         : 65001

 Date: 04/03/2024 10:42:47
*/


-- ----------------------------
-- Table structure for FILM21
-- ----------------------------
CREATE TABLE FILM21 (
  ID_FILM21 CHAR(5 BYTE) NOT NULL,
  JUDUL VARCHAR2(100 BYTE) NOT NULL,
  SINOPSIS VARCHAR2(1000 BYTE),
  TAHUN NUMBER,
  DURASI NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT;

-- ----------------------------
-- Records of FILM21
-- ----------------------------
INSERT INTO "FILM21" VALUES ('F0101', 'Keluarga Cemara', 'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, FILM ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.', '2019', '110');
INSERT INTO "FILM21" VALUES ('F0102', 'Habibie Ainun 3', 'Habibie Ainun 3 adalah sebuah FILM Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). FILM ini adalah FILM ketiga dari seri FILM Habibie Ainun. Bila Rudy Habibie merupakan prekuel dari kisah Habibie muda, maka Habibie Ainun 3 ini adalah prekuel dari kisah Ainun muda. FILM21 ini diNEW_NEW_JADWALkan rilis pada 19 Desember 2019.', '2019', '96');
INSERT INTO "FILM21" VALUES ('F0103', 'Taufiq', 'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah FILM tayang 14 Maret 2019. FILM yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.', '2019', '105');
INSERT INTO "FILM21" VALUES ('F0104', 'Buya Hamka', 'Buya Hamka adalah FILM drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, FILM21 ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.', '2019', '110');

-- ----------------------------
-- Table structure for NEW_INVENTORI
-- ----------------------------
CREATE TABLE "NEW_INVENTORI" (
  "ID_NEW_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "ID_NEW_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "NOMOR_KURSI" VARCHAR2(5 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of NEW_INVENTORI
-- ----------------------------
INSERT INTO "NEW_INVENTORI" VALUES ('IN1001', 'Teater 1', 'A1');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1002', 'Teater 1', 'A2');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1003', 'Teater 1', 'A3');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1004', 'Teater 1', 'A4');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1005', 'Teater 1', 'A5');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1006', 'Teater 2', 'A6');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1007', 'Teater 2', 'A7');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1008', 'Teater 2', 'A8');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1009', 'Teater 2', 'B1');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1010', 'Teater 2', 'B2');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1011', 'Teater 3', 'C1');
INSERT INTO "NEW_INVENTORI" VALUES ('IN1012', 'Teater 3', 'C2');

-- ----------------------------
-- Table structure for NEW_NEW_JADWAL
-- ----------------------------
CREATE TABLE "NEW_NEW_JADWAL" (
  "ID_NEW_NEW_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_FILM21" CHAR(5 BYTE) NOT NULL,
  "ID_NEW_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "PERIODE_START" DATE,
  "PERIODE_END" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of NEW_NEW_JADWAL
-- ----------------------------
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT001', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT002', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT003', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT004', 'F0101', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT005', 'F0103', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT006', 'F0102', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT007', 'F0104', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT008', 'F0102', 'Teater 3', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT009', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_NEW_JADWAL" VALUES ('JT010', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for NEW_MEMBER
-- ----------------------------
CREATE TABLE "NEW_MEMBER" (
  "ID_NEW_MEMBER" CHAR(6 BYTE) NOT NULL,
  "NAMA" VARCHAR2(255 BYTE) NOT NULL,
  "NO_HP" VARCHAR2(20 BYTE) NOT NULL,
  "EMAIL" VARCHAR2(20 BYTE),
  "TGL_LAHIR" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of NEW_MEMBER
-- ----------------------------
INSERT INTO "NEW_MEMBER" VALUES ('MM0111', 'Anto', '085267656789', 'Anto2016@gmail.com', TO_DATE('1989-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0112', 'Budi', '081367589632', 'Budi2016@gmail.com', TO_DATE('1985-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0113', 'Ari', '081267867543', 'Ari2016@gmail.com', TO_DATE('1983-11-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0114', 'Rahmi', '085267935678', 'Rahmi2016@gmail.com', TO_DATE('1981-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0115', 'Fahmi', '085767298908', 'Fahmi2016@gmail.com', TO_DATE('1986-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0116', 'Rusli', '085643755398', 'Rusli2016@gmail.com', TO_DATE('1988-02-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0117', 'Doni', '081398426789', 'Doni2016@gmail.com', TO_DATE('1986-04-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0118', 'Tati', '085245289074', 'Tati2016@gmail.com', TO_DATE('1985-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0119', 'Dono', '081287234567', 'Dono2016@gmail.com', TO_DATE('1990-07-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "NEW_MEMBER" VALUES ('MM0120', 'Joko', '081223670942', 'Joko2016@gmail.com', TO_DATE('1988-07-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for NEW_THEATER
-- ----------------------------
CREATE TABLE "NEW_THEATER" (
  "ID_NEW_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "KELAS" VARCHAR2(20 BYTE),
  "HARGA" NUMBER NOT NULL,
  "KAPASITAS" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of NEW_THEATER
-- ----------------------------
INSERT INTO "NEW_THEATER" VALUES ('Teater 1', 'Reguler', '30000', '50');
INSERT INTO "NEW_THEATER" VALUES ('Teater 2', 'Sweetbox', '100000', '50');
INSERT INTO "NEW_THEATER" VALUES ('Teater 3', '4D', '75000', '50');
INSERT INTO "NEW_THEATER" VALUES ('Teater 4', 'Velvet', '80000', '50');
INSERT INTO "NEW_THEATER" VALUES ('Teater 5', '3D', '50000', '50');

-- ----------------------------
-- Table structure for NEW_TRANSAKSI
-- ----------------------------

CREATE TABLE "NEW_TRANSAKSI" (
  "KODE_PEMESANAN" CHAR(6 BYTE) NOT NULL,
  "ID_NEW_MEMBER" CHAR(6 BYTE) NOT NULL,
  "ID_NEW_NEW_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_NEW_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "TANGGAL" DATE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of NEW_TRANSAKSI
-- ----------------------------
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10001', 'MM0111', 'JT001', 'IN1010', TO_DATE('2019-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10002', 'MM0112', 'JT006', 'IN1009', TO_DATE('2019-06-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10003', 'MM0113', 'JT008', 'IN1008', TO_DATE('2019-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10004', 'MM0114', 'JT001', 'IN1007', TO_DATE('2019-06-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10005', 'MM0115', 'JT006', 'IN1006', TO_DATE('2019-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10006', 'MM0116', 'JT001', 'IN1001', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'bayar');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10007', 'MM0117', 'JT008', 'IN1011', TO_DATE('2019-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10008', 'MM0118', 'JT001', 'IN1003', TO_DATE('2019-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10009', 'MM0119', 'JT006', 'IN1004', TO_DATE('2019-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "NEW_TRANSAKSI" VALUES ('P10010', 'MM0120', 'JT008', 'IN1005', TO_DATE('2019-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'checkin');

-- ----------------------------
-- Primary Key structure for table FILM21
-- ----------------------------
ALTER TABLE "FILM21" ADD CONSTRAINT "FILM21_PK" PRIMARY KEY ("ID_FILM21");


-- ----------------------------
-- Primary Key structure for table NEW_INVENTORI
-- ----------------------------
ALTER TABLE "NEW_INVENTORI" ADD CONSTRAINT "NEW_INVENTORI_PK" PRIMARY KEY ("ID_NEW_INVENTORI");


-- ----------------------------
-- Primary Key structure for table NEW_NEW_JADWAL
-- ----------------------------
ALTER TABLE "NEW_NEW_JADWAL" ADD CONSTRAINT "NEW_NEW_JADWAL_PK" PRIMARY KEY ("ID_NEW_NEW_JADWAL");


-- ----------------------------
-- Primary Key structure for table NEW_MEMBER
-- ----------------------------
ALTER TABLE "NEW_MEMBER" ADD CONSTRAINT "NEW_MEMBER_PK" PRIMARY KEY ("ID_NEW_MEMBER");


-- ----------------------------
-- Primary Key structure for table NEW_THEATER
-- ----------------------------
ALTER TABLE "NEW_THEATER" ADD CONSTRAINT "NEW_THEATER_PK" PRIMARY KEY ("ID_NEW_THEATER");


-- ----------------------------
-- Primary Key structure for table NEW_TRANSAKSI
-- ----------------------------
ALTER TABLE "NEW_TRANSAKSI" ADD CONSTRAINT "NEW_TRANSAKSI_PK" PRIMARY KEY ("KODE_PEMESANAN");

-- ----------------------------
-- Foreign Keys structure for table NEW_INVENTORI
-- ----------------------------
ALTER TABLE "NEW_INVENTORI" ADD CONSTRAINT "NEW_INVENTORI_FK1" FOREIGN KEY ("ID_NEW_THEATER") REFERENCES "NEW_THEATER" ("ID_NEW_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table NEW_NEW_JADWAL
-- ----------------------------
ALTER TABLE "NEW_NEW_JADWAL" ADD CONSTRAINT "NEW_NEW_JADWAL_FK1" FOREIGN KEY ("ID_FILM21") REFERENCES "FILM21" ("ID_FILM21") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "NEW_NEW_JADWAL" ADD CONSTRAINT "NEW_NEW_JADWAL_FK2" FOREIGN KEY ("ID_NEW_THEATER") REFERENCES "NEW_THEATER" ("ID_NEW_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table NEW_TRANSAKSI
-- ----------------------------
ALTER TABLE "NEW_TRANSAKSI" ADD CONSTRAINT "NEW_TRANSAKSI_FK1" FOREIGN KEY ("ID_NEW_NEW_JADWAL") REFERENCES "NEW_NEW_JADWAL" ("ID_NEW_NEW_JADWAL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "NEW_TRANSAKSI" ADD CONSTRAINT "NEW_TRANSAKSI_FK2" FOREIGN KEY ("ID_NEW_INVENTORI") REFERENCES "NEW_INVENTORI" ("ID_NEW_INVENTORI") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "NEW_TRANSAKSI" ADD CONSTRAINT "NEW_TRANSAKSI_FK3" FOREIGN KEY ("ID_NEW_MEMBER") REFERENCES "NEW_MEMBER" ("ID_NEW_MEMBER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

desc FILM21;
SELECT * FROM FILM21;

desc NEW_INVENTORI;
SELECT * FROM NEW_INVENTORI;

desc NEW_NEW_JADWAL;
SELECT * FROM NEW_NEW_JADWAL;

desc NEW_THEATER;
SELECT * FROM NEW_THEATER;

desc NEW_TRANSAKSI;
SELECT * FROM NEW_TRANSAKSI;

SELECT 
    "ID_NEW_THEATER", 
    "KELAS", 
    "HARGA" AS HARGA_AWAL, 
    ("HARGA" * 0.85) AS HARGA_DISKON, 
    "KAPASITAS"
FROM "NEW_THEATER";

SELECT 
    T."ID_NEW_THEATER",
    SUM(T."HARGA") AS TOTAL_PEMASUKAN
FROM "NEW_THEATER" T
JOIN "NEW_NEW_JADWAL" J ON T."ID_NEW_THEATER" = J."ID_NEW_THEATER"
JOIN "NEW_TRANSAKSI" TR ON J."ID_NEW_NEW_JADWAL" = TR."ID_NEW_NEW_JADWAL"
GROUP BY T."ID_NEW_THEATER";

SELECT f.judul, t.ID_NEW_THEATER, t.harga
FROM FILM21 f
JOIN NEW_NEW_JADWAL j ON f.id_film21 = j.id_film21
JOIN NEW_THEATER t ON j.id_New_theater = t.id_New_theater
WHERE TO_DATE('2019-07-05', 'YYYY-MM-DD') BETWEEN j.periode_start AND j.periode_end;

SELECT 
    f.JUDUL, 
    t.ID_NEW_THEATER, 
    j.PERIODE_START, 
    j.PERIODE_END
FROM FILM21 f
JOIN NEW_NEW_JADWAL j ON f.ID_FILM21 = j.ID_FILM21
JOIN NEW_THEATER t ON j.ID_NEW_THEATER = t.ID_NEW_THEATER
WHERE f.JUDUL LIKE '%Habibie Ainun 3%';

SELECT 
    m.ID_NEW_MEMBER, 
    tr.TANGGAL, 
    tr.STATUS
FROM NEW_MEMBER m
JOIN NEW_TRANSAKSI tr ON m.ID_NEW_MEMBER = tr.ID_NEW_MEMBER
JOIN NEW_NEW_JADWAL j ON tr.ID_NEW_NEW_JADWAL = j.ID_NEW_NEW_JADWAL
JOIN FILM21 f ON j.ID_FILM21 = f.ID_FILM21
JOIN NEW_THEATER t ON j.ID_NEW_THEATER = t.ID_NEW_THEATER
WHERE f.JUDUL = 'Keluarga Cemara' 
  AND t.ID_NEW_THEATER = 'Teater 1';



