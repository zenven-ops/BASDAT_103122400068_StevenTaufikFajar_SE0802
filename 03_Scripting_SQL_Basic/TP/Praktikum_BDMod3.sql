select nmproduk, kategori from produk where kategori not in('Aksesoris PC');	praktikum_modul3	1773284064191	SQL	1	0.006
select nmproduk, kategori from produk where idproduk ='PR004';	praktikum_modul3	1773279795672	SQL	1	0.005
select nmfurnitur, bahan, harga from furnitur where bahan in ('Kayu');	praktikum_modul3	1773284186542	SQL	1	0.006
select nmfurnitur || ' - ' || bahan as "ingpo furnitur" from furnitur;	praktikum_modul3	1773282768510	SQL	1	0.015

select namagame, platform, harga from game where platform = 'PS' or Platform = 'Mobile';	praktikum_modul3	1773283607972	SQL	1	0.01
select namagame, platform, harga from game where platform = 'PC' and harga >= 450000;	praktikum_modul3	1773283405248	SQL	2	0.002
select namagame, platform, harga from game where platform = 'PC' and harga > 450000;	praktikum_modul3	1773283447084	SQL	1	0.006
select namagame, platform, harga from game where platform = 'PC' and harga > 350000;	praktikum_modul3	1773283310154	SQL	1	0.005

select namagame, platform from game where platform in ('pc','PS');	praktikum_modul3	1773283973622	SQL	1	0.003
select namagame, harga from game where harga between 400000 and 800000;	praktikum_modul3	1773284540087	SQL	1	0.007

select namagame, 'tersedia di platform', platform from game;	praktikum_modul3	1773283001347	SQL	1	0.006
select namagame from game where namagame not like'%FIFA%';	praktikum_modul3	1773284790353	SQL	1	0.006
select namagame from game where namagame Like 'G%';	praktikum_modul3	1773284741881	SQL	1	0.005
select bahan, count(*) as jumlah_furnitur
from furnitur group by bahan;	praktikum_modul3	1773281074070	SQL	2	0.002
select * from tab;	praktikum_modul3	1773281344305	SQL	2	0.007
select * from furnitur order by stok desc;	praktikum_modul3	1773281421893	SQL	1	0.006
select * from furnitur order by stok asc;	praktikum_modul3	1773281396043	SQL	1	0.007
desc produk;	praktikum_modul3	1773281243202	SQL	1	1.039
desc furnitur;	praktikum_modul3	1773281250270	SQL	1	0.581
-- Tabel kategori_game (induk dari tabel game)
CREATE TABLE genre (
    idgenre     VARCHAR2(5)    PRIMARY KEY,
    namaGenre   VARCHAR2(30)   NOT NULL
);

-- Tabel game
CREATE TABLE game (
    idgame      VARCHAR2(10)   PRIMARY KEY,
    namaGame    VARCHAR2(50)   NOT NULL,
    platform    VARCHAR2(20)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL,
    idgenre     VARCHAR2(5),
    CONSTRAINT fk_genre FOREIGN KEY (idgenre) REFERENCES genre(idgenre)
);

-- Tabel furnitur
CREATE TABLE furnitur (
    idfurnitur  VARCHAR2(10)   PRIMARY KEY,
    nmFurnitur  VARCHAR2(50)   NOT NULL,
    bahan       VARCHAR2(30)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL
);

-- Tabel produk
CREATE TABLE produk (
    idproduk    VARCHAR2(10)   PRIMARY KEY,
    nmProduk    VARCHAR2(50)   NOT NULL,
    kategori    VARCHAR2(30)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL
);
-- Insert data genre
INSERT ALL
    INTO genre VALUES ('G001', 'Action')
    INTO genre VALUES ('G002', 'RPG')
    INTO genre VALUES ('G003', 'Sports')
    INTO genre VALUES ('G004', 'Strategy')
    INTO genre VALUES ('G005', 'Horror')
SELECT * FROM dual;

-- Insert data game
INSERT ALL
    INTO game VALUES ('GM001', 'Elden Ring',          'PC',      800000, 12, 'G001')
    INTO game VALUES ('GM002', 'FIFA 25',             'PS',      700000, 20, 'G003')
    INTO game VALUES ('GM003', 'Genshin Impact',      'Mobile',       0, 99, 'G002')
    INTO game VALUES ('GM004', 'Resident Evil 4',     'PC',      450000,  7, 'G005')
    INTO game VALUES ('GM005', 'Civilization VII',    'PC',      850000,  5, 'G004')
    INTO game VALUES ('GM006', 'eFootball 2025',      'Mobile',       0, 99, 'G003')
    INTO game VALUES ('GM007', 'Final Fantasy XVI',   'PS',      650000, 10, 'G002')
    INTO game VALUES ('GM008', 'Alien Isolation',     'PC',      150000, 15, 'G005')
SELECT * FROM dual;

-- Insert data furnitur
INSERT ALL
    INTO furnitur VALUES ('FN001', 'Kursi Kerja Ergonomis',  'Besi',  850000, 10)
    INTO furnitur VALUES ('FN002', 'Meja Makan Minimalis',   'Kayu', 1200000,  5)
    INTO furnitur VALUES ('FN003', 'Lemari Pakaian 3 Pintu', 'Kayu', 2500000,  3)
    INTO furnitur VALUES ('FN004', 'Rak Buku Dinding',       'Besi',  350000, 20)
    INTO furnitur VALUES ('FN005', 'Sofa L-Shape',           'Kayu', 4500000,  2)
    INTO furnitur VALUES ('FN006', 'Meja Belajar Lipat',     'Kayu',  600000,  8)
    INTO furnitur VALUES ('FN007', 'Kursi Bar Minimalis',    'Besi',  450000, 12)
    INTO furnitur VALUES ('FN008', 'Tempat Tidur Single',    'Kayu', 1800000,  6)
SELECT * FROM dual;

-- Insert data produk
INSERT ALL
    INTO produk VALUES ('PR001', 'Mechanical Keyboard', 'Aksesoris PC',  750000, 15)
    INTO produk VALUES ('PR002', 'Mouse Gaming',        'Aksesoris PC',  350000, 25)
    INTO produk VALUES ('PR003', 'Monitor 24 inch',     'Elektronik',   2100000,  7)
    INTO produk VALUES ('PR004', 'Headset Wireless',    'Elektronik',    850000, 10)
    INTO produk VALUES ('PR005', 'Kabel HDMI 2m',       'Aksesoris PC',   45000, 50)
    INTO produk VALUES ('PR006', 'Webcam HD 1080p',     'Elektronik',    650000,  8)
    INTO produk VALUES ('PR007', 'Mouse Pad XL',        'Aksesoris PC',   95000, 30)
    INTO produk VALUES ('PR008', 'USB Hub 4 Port',      'Aksesoris PC',  120000, 20)
SELECT * FROM dual;

commit;
SELECT * FROM genre;
SELECT * FROM game;
SELECT * FROM furnitue;
SELECT * FROM produk;

-- Cari data spesifik dari salah satu tabel
select nmproduk, kategori from produk where idproduk ='PR004';

--Cari data tabel yg tidak duplikat
select distinct kategori from produk;

--Sortir data tabel yang ingin di tampilkan
select bahan, count(*) as jumlah_furnitur
from furnitur group by bahan;	praktikum_modul3	1773280453524	Script	1	0.25
-- Tabel kategori_game (induk dari tabel game)
CREATE TABLE genre (
    idgenre     VARCHAR2(5)    PRIMARY KEY,
    namaGenre   VARCHAR2(30)   NOT NULL
);

-- Tabel game
CREATE TABLE game (
    idgame      VARCHAR2(10)   PRIMARY KEY,
    namaGame    VARCHAR2(50)   NOT NULL,
    platform    VARCHAR2(20)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL,
    idgenre     VARCHAR2(5),
    CONSTRAINT fk_genre FOREIGN KEY (idgenre) REFERENCES genre(idgenre)
);

-- Tabel furnitur
CREATE TABLE furnitur (
    idfurnitur  VARCHAR2(10)   PRIMARY KEY,
    nmFurnitur  VARCHAR2(50)   NOT NULL,
    bahan       VARCHAR2(30)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL
);

-- Tabel produk
CREATE TABLE produk (
    idproduk    VARCHAR2(10)   PRIMARY KEY,
    nmProduk    VARCHAR2(50)   NOT NULL,
    kategori    VARCHAR2(30)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL
);
-- Insert data genre
INSERT ALL
    INTO genre VALUES ('G001', 'Action')
    INTO genre VALUES ('G002', 'RPG')
    INTO genre VALUES ('G003', 'Sports')
    INTO genre VALUES ('G004', 'Strategy')
    INTO genre VALUES ('G005', 'Horror')
SELECT * FROM dual;

-- Insert data game
INSERT ALL
    INTO game VALUES ('GM001', 'Elden Ring',          'PC',      800000, 12, 'G001')
    INTO game VALUES ('GM002', 'FIFA 25',             'PS',      700000, 20, 'G003')
    INTO game VALUES ('GM003', 'Genshin Impact',      'Mobile',       0, 99, 'G002')
    INTO game VALUES ('GM004', 'Resident Evil 4',     'PC',      450000,  7, 'G005')
    INTO game VALUES ('GM005', 'Civilization VII',    'PC',      850000,  5, 'G004')
    INTO game VALUES ('GM006', 'eFootball 2025',      'Mobile',       0, 99, 'G003')
    INTO game VALUES ('GM007', 'Final Fantasy XVI',   'PS',      650000, 10, 'G002')
    INTO game VALUES ('GM008', 'Alien Isolation',     'PC',      150000, 15, 'G005')
SELECT * FROM dual;

-- Insert data furnitur
INSERT ALL
    INTO furnitur VALUES ('FN001', 'Kursi Kerja Ergonomis',  'Besi',  850000, 10)
    INTO furnitur VALUES ('FN002', 'Meja Makan Minimalis',   'Kayu', 1200000,  5)
    INTO furnitur VALUES ('FN003', 'Lemari Pakaian 3 Pintu', 'Kayu', 2500000,  3)
    INTO furnitur VALUES ('FN004', 'Rak Buku Dinding',       'Besi',  350000, 20)
    INTO furnitur VALUES ('FN005', 'Sofa L-Shape',           'Kayu', 4500000,  2)
    INTO furnitur VALUES ('FN006', 'Meja Belajar Lipat',     'Kayu',  600000,  8)
    INTO furnitur VALUES ('FN007', 'Kursi Bar Minimalis',    'Besi',  450000, 12)
    INTO furnitur VALUES ('FN008', 'Tempat Tidur Single',    'Kayu', 1800000,  6)
SELECT * FROM dual;

-- Insert data produk
INSERT ALL
    INTO produk VALUES ('PR001', 'Mechanical Keyboard', 'Aksesoris PC',  750000, 15)
    INTO produk VALUES ('PR002', 'Mouse Gaming',        'Aksesoris PC',  350000, 25)
    INTO produk VALUES ('PR003', 'Monitor 24 inch',     'Elektronik',   2100000,  7)
    INTO produk VALUES ('PR004', 'Headset Wireless',    'Elektronik',    850000, 10)
    INTO produk VALUES ('PR005', 'Kabel HDMI 2m',       'Aksesoris PC',   45000, 50)
    INTO produk VALUES ('PR006', 'Webcam HD 1080p',     'Elektronik',    650000,  8)
    INTO produk VALUES ('PR007', 'Mouse Pad XL',        'Aksesoris PC',   95000, 30)
    INTO produk VALUES ('PR008', 'USB Hub 4 Port',      'Aksesoris PC',  120000, 20)
SELECT * FROM dual;

commit;
SELECT * FROM genre;
SELECT * FROM game;
SELECT * FROM furnitue;
SELECT * FROM produk;

-- Cari data spesifik dari salah satu tabel
select nmproduk, kategori from produk where idproduk ='PR004'	praktikum_modul3	1773279528837	Script	1	0.341
-- Tabel kategori_game (induk dari tabel game)

CREATE TABLE genre (
    idgenre     VARCHAR2(5)    PRIMARY KEY,
    namaGenre   VARCHAR2(30)   NOT NULL
);

-- Tabel game
CREATE TABLE game (
    idgame      VARCHAR2(10)   PRIMARY KEY,
    namaGame    VARCHAR2(50)   NOT NULL,
    platform    VARCHAR2(20)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL,
    idgenre     VARCHAR2(5),
    CONSTRAINT fk_genre FOREIGN KEY (idgenre) REFERENCES genre(idgenre)
);

-- Tabel furnitur
CREATE TABLE furnitur (
    idfurnitur  VARCHAR2(10)   PRIMARY KEY,
    nmFurnitur  VARCHAR2(50)   NOT NULL,
    bahan       VARCHAR2(30)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL
);

-- Tabel produk
CREATE TABLE produk (
    idproduk    VARCHAR2(10)   PRIMARY KEY,
    nmProduk    VARCHAR2(50)   NOT NULL,
    kategori    VARCHAR2(30)   NOT NULL,
    harga       NUMBER(15)     NOT NULL,
    stok        NUMBER(10)     NOT NULL
);
-- Insert data genre
INSERT ALL
    INTO genre VALUES ('G001', 'Action')
    INTO genre VALUES ('G002', 'RPG')
    INTO genre VALUES ('G003', 'Sports')
    INTO genre VALUES ('G004', 'Strategy')
    INTO genre VALUES ('G005', 'Horror')
SELECT * FROM dual;

-- Insert data game
INSERT ALL
    INTO game VALUES ('GM001', 'Elden Ring',          'PC',      800000, 12, 'G001')
    INTO game VALUES ('GM002', 'FIFA 25',             'PS',      700000, 20, 'G003')
    INTO game VALUES ('GM003', 'Genshin Impact',      'Mobile',       0, 99, 'G002')
    INTO game VALUES ('GM004', 'Resident Evil 4',     'PC',      450000,  7, 'G005')
    INTO game VALUES ('GM005', 'Civilization VII',    'PC',      850000,  5, 'G004')
    INTO game VALUES ('GM006', 'eFootball 2025',      'Mobile',       0, 99, 'G003')
    INTO game VALUES ('GM007', 'Final Fantasy XVI',   'PS',      650000, 10, 'G002')
    INTO game VALUES ('GM008', 'Alien Isolation',     'PC',      150000, 15, 'G005')
SELECT * FROM dual;

-- Insert data furnitur
INSERT ALL
    INTO furnitur VALUES ('FN001', 'Kursi Kerja Ergonomis',  'Besi',  850000, 10)
    INTO furnitur VALUES ('FN002', 'Meja Makan Minimalis',   'Kayu', 1200000,  5)
    INTO furnitur VALUES ('FN003', 'Lemari Pakaian 3 Pintu', 'Kayu', 2500000,  3)
    INTO furnitur VALUES ('FN004', 'Rak Buku Dinding',       'Besi',  350000, 20)
    INTO furnitur VALUES ('FN005', 'Sofa L-Shape',           'Kayu', 4500000,  2)
    INTO furnitur VALUES ('FN006', 'Meja Belajar Lipat',     'Kayu',  600000,  8)
    INTO furnitur VALUES ('FN007', 'Kursi Bar Minimalis',    'Besi',  450000, 12)
    INTO furnitur VALUES ('FN008', 'Tempat Tidur Single',    'Kayu', 1800000,  6)
SELECT * FROM dual;

-- Insert data produk
INSERT ALL
    INTO produk VALUES ('PR001', 'Mechanical Keyboard', 'Aksesoris PC',  750000, 15)
    INTO produk VALUES ('PR002', 'Mouse Gaming',        'Aksesoris PC',  350000, 25)
    INTO produk VALUES ('PR003', 'Monitor 24 inch',     'Elektronik',   2100000,  7)
    INTO produk VALUES ('PR004', 'Headset Wireless',    'Elektronik',    850000, 10)
    INTO produk VALUES ('PR005', 'Kabel HDMI 2m',       'Aksesoris PC',   45000, 50)
    INTO produk VALUES ('PR006', 'Webcam HD 1080p',     'Elektronik',    650000,  8)
    INTO produk VALUES ('PR007', 'Mouse Pad XL',        'Aksesoris PC',   95000, 30)
    INTO produk VALUES ('PR008', 'USB Hub 4 Port',      'Aksesoris PC',  120000, 20)
SELECT * FROM dual;

commit;
SELECT * FROM genre;
SELECT * FROM game;
SELECT * FROM furnitue;
SELECT * FROM produk;	praktikum_modul3	1773279161755	Script	1	0.555
