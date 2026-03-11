SQL> --nama : Steven Taufik Fajar
SQL> nim : 103122400068
SP2-0734: unknown command beginning "nim : 1031..." - rest of line ignored.
SQL> --nim : 103122400068
SQL> CREATE TABLE Mahasiswa (
  2  id_mahasiswa VARCHAR(20) PRIMARY KEY,
  3  nama VARCHAR2(20),
  4  tempat_lahir VARCHAR2(100),
  5  nomor_hp VARCHAR2(12),
  6  
SQL> ;
  1  CREATE TABLE Mahasiswa (
  2  id_mahasiswa VARCHAR(20) PRIMARY KEY,
  3  nama VARCHAR2(20),
  4  tempat_lahir VARCHAR2(100),
  5* nomor_hp VARCHAR2(12),
SQL> email VARCHAR(50),
SP2-0734: unknown command beginning "email VARC..." - rest of line ignored.
SQL> desc mahasiswa;
ERROR:
ORA-04043: object mahasiswa does not exist 


SQL> CREATE TABLE Mahasiswa (
  2  id VARCHAR(15) PRIMARY KEY,
  3  tempat_lahir VARCHAR2(100),
  4  tempat_lahir DATE,
  5  nomor_hp VARCHAR2(12),
  6  email VARCHAR(40),
  7  tinggi_badan NUMBER(5,2),
  8  berat_badan NUMBER(5,2)
  9  );
tempat_lahir DATE,
*
ERROR at line 4:
ORA-00957: duplicate column name 


SQL> CREATE TABLE Mahasiswa (
  2  id VARCHAR(15) PRIMARY KEY,
  3  nama VARCHAR2(50),
  4  tempat_lahir VARCHAR2(100),
  5  tanggal_lahir DATE,
  6  nomor_hp VARCHAR2(12),
  7  email VARCHAR(40),
  8  tinggi_badan NUMBER(5,2),
  9  berat_badan NUMBER(5,2)
 10  );

Table created.

SQL> INSERT INTO mahasiswa VALUES ('M001', 'Yuda Setiawan', 'Purwokerto', TO_DATE('1999-05-15', 'YYYY-MM-DD'), '08895028496', 'Yuda@email.com', 170.5, 65.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M002', 'Andi Bagus', 'Purwokerto', TO_DATE('2000-08-20', 'YYYY-MM-DD'), '088855303550', 'Andi@email.com', 160.0, 55.5);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M003', 'Cecep Nurahman', 'Bandung', TO_DATE('1998-12-01', 'YYYY-MM-DD'), '08836875482659', 'Cecep@email.com', 175.2, 70.0);
INSERT INTO mahasiswa VALUES ('M003', 'Cecep Nurahman', 'Bandung', TO_DATE('1998-12-01', 'YYYY-MM-DD'), '08836875482659', 'Cecep@email.com', 175.2, 70.0)
                                                                                                        *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."MAHASISWA"."NOMOR_HP" (actual: 
14, maximum: 12) 


SQL> INSERT INTO mahasiswa VALUES ('M004', 'Ujang Sutisna', 'Bandung', TO_DATE('2001-02-14', 'YYYY-MM-DD'), '0838226557745', 'Ujang@email.com', 158.5, 48.0);
INSERT INTO mahasiswa VALUES ('M004', 'Ujang Sutisna', 'Bandung', TO_DATE('2001-02-14', 'YYYY-MM-DD'), '0838226557745', 'Ujang@email.com', 158.5, 48.0)
                                                                                                       *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."MAHASISWA"."NOMOR_HP" (actual: 
13, maximum: 12) 


SQL> INSERT INTO mahasiswa VALUES ('M003', 'Cecep Nurahman', 'Bandung', TO_DATE('1998-12-01', 'YYYY-MM-DD'), '083687548265', 'Cecep@email.com', 175.2, 70.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M004', 'Ujang Sutisna', 'Bandung', TO_DATE('2001-02-14', 'YYYY-MM-DD'), '083822655774', 'Ujang@email.com', 158.5, 48.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M005', 'Fais Harianto', 'Purwokerto', TO_DATE('1999-11-11', 'YYYY-MM-DD'), '086540728099', 'Fais@email.com', 180.0, 80.5);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M006', 'Dewi Lestari', 'Purwokerto', TO_DATE('2000-04-05', 'YYYY-MM-DD'), '086540728033', 'dewi@email.com', 165.0, 60.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M007', 'Asep Fatahilah', 'Bandung', TO_DATE('1997-07-25', 'YYYY-MM-DD'), '086398521499', 'Asep@email.com', 168.5, 68.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M008', '	Wahyudi', 'Purwokerto', TO_DATE('2002-09-30', 'YYYY-MM-DD'), '088578800372', 'Wahyudi@email.com', 162.0, 52.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M009', 'Rizky ', 'Purwokerto', TO_DATE('1998-03-17', 'YYYY-MM-DD'), '08870648624', 'rizky@email.com', 172.0, 66.5);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M010', 'Entin', 'Bandung', TO_DATE('2001-01-22', 'YYYY-MM-DD'), '08725708811', 'Entin@email.com', 155.0, 45.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M011', 'Wina', 'Bandung', TO_DATE('1999-10-10', 'YYYY-MM-DD'), '08110387823', 'Wina@email.com', 178.5, 75.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M012', 'Dimas Firdaus', 'Purwokerto', TO_DATE('2000-06-08', 'YYYY-MM-DD'), '081103878238', 'Dimas@email.com', 160.5, 50.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M013', 'Surya Bintang', 'Purwokerto', TO_DATE('1997-12-25', 'YYYY-MM-DD'), '086586252777', 'Surya@email.com', 170.0, 62.5);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M014', 'Siti', 'Purwokerto', TO_DATE('2002-05-02', 'YYYY-MM-DD'), '082803231645', 'Siti@email.com', 164.0, 56.0);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M015', 'Toni ', 'Bandung', TO_DATE('1998-08-17', 'YYYY-MM-DD'), '083137017800', 'Toni@email.com', 169.0, 69.0);

1 row created.

SQL> desc Mahasiswa;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL VARCHAR2(15)
 NAMA                                               VARCHAR2(50)
 TEMPAT_LAHIR                                       VARCHAR2(100)
 TANGGAL_LAHIR                                      DATE
 NOMOR_HP                                           VARCHAR2(12)
 EMAIL                                              VARCHAR2(40)
 TINGGI_BADAN                                       NUMBER(5,2)
 BERAT_BADAN                                        NUMBER(5,2)

SQL> SELECT * FROM Mahasiswa;

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M001            Yuda Setiawan                                                   
Purwokerto                                                                      
15-MAY-99 08895028496  Yuda@email.com                                  170.5    
         65                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M002            Andi Bagus                                                      
Purwokerto                                                                      
20-AUG-00 088855303550 Andi@email.com                                    160    
       55.5                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M003            Cecep Nurahman                                                  
Bandung                                                                         
01-DEC-98 083687548265 Cecep@email.com                                 175.2    
         70                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M004            Ujang Sutisna                                                   
Bandung                                                                         
14-FEB-01 083822655774 Ujang@email.com                                 158.5    
         48                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M005            Fais Harianto                                                   
Purwokerto                                                                      
11-NOV-99 086540728099 Fais@email.com                                    180    
       80.5                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M006            Dewi Lestari                                                    
Purwokerto                                                                      
05-APR-00 086540728033 dewi@email.com                                    165    
         60                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M007            Asep Fatahilah                                                  
Bandung                                                                         
25-JUL-97 086398521499 Asep@email.com                                  168.5    
         68                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M008            	Wahyudi                                                        
Purwokerto                                                                      
30-SEP-02 088578800372 Wahyudi@email.com                                 162    
         52                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M009            Rizky                                                           
Purwokerto                                                                      
17-MAR-98 08870648624  rizky@email.com                                   172    
       66.5                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M010            Entin                                                           
Bandung                                                                         
22-JAN-01 08725708811  Entin@email.com                                   155    
         45                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M011            Wina                                                            
Bandung                                                                         
10-OCT-99 08110387823  Wina@email.com                                  178.5    
         75                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M012            Dimas Firdaus                                                   
Purwokerto                                                                      
08-JUN-00 081103878238 Dimas@email.com                                 160.5    
         50                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M013            Surya Bintang                                                   
Purwokerto                                                                      
25-DEC-97 086586252777 Surya@email.com                                   170    
       62.5                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M014            Siti                                                            
Purwokerto                                                                      
02-MAY-02 082803231645 Siti@email.com                                    164    
         56                                                                     
                                                                                

ID              NAMA                                                            
--------------- --------------------------------------------------              
TEMPAT_LAHIR                                                                    
--------------------------------------------------------------------------------
TANGGAL_L NOMOR_HP     EMAIL                                    TINGGI_BADAN    
--------- ------------ ---------------------------------------- ------------    
BERAT_BADAN                                                                     
-----------                                                                     
M015            Toni                                                            
Bandung                                                                         
17-AUG-98 083137017800 Toni@email.com                                    169    
         69                                                                     
                                                                                

15 rows selected.

SQL> SELECT
  2  UPPER(nama) AS nama_kapital_semua,
  3  LOWER(email) AS email_huruf_kecil,
  4  INITCAP(tempat_lahir) AS tempat_lahir_awal_kapital,
  5  CONCAT(id, CONCAT(' - ', nama)) AS id_dan_nama,
  6  LENGTH(nama) AS panjang_karakter_nama,
  7  SUBSTR(nama, 1, 3) AS tiga_huruf_pertama,
  8  LPAD(id, 8, '*') AS id_pad_kiri,
  9  RPAD(nama, 20, '.') AS nama_pad_kanan,
 10  LTRIM(nama, 'B') AS hapus_b_di_kiri,
 11  RTRIM(nama, 'a') AS hapus_a_di_kanan,
 12  INSTR(email, '@') AS posisi_karakter_at,
 13  REPLACE(nomor_hp, '081', '+6281') AS format_no_hp_baru
 14  FROM mahasiswa;

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
YUDA SETIAWAN                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
yuda@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M001 - Yuda Setiawan                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   13 Yud          ****M001                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Yuda Setiawan.......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Yuda Setiawan                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Yuda Setiawan                                                       5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
08895028496                                                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
ANDI BAGUS                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
andi@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M002 - Andi Bagus                                                               

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   10 And          ****M002                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Andi Bagus..........                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Andi Bagus                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Andi Bagus                                                          5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
088855303550                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
CECEP NURAHMAN                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
cecep@email.com                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Bandung                                                                         

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M003 - Cecep Nurahman                                                           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   14 Cec          ****M003                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Cecep Nurahman......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Cecep Nurahman                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Cecep Nurahman                                                      6           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
083687548265                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
UJANG SUTISNA                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
ujang@email.com                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Bandung                                                                         

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M004 - Ujang Sutisna                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   13 Uja          ****M004                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Ujang Sutisna.......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Ujang Sutisna                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Ujang Sutisn                                                        6           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
083822655774                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
FAIS HARIANTO                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
fais@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M005 - Fais Harianto                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   13 Fai          ****M005                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Fais Harianto.......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Fais Harianto                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Fais Harianto                                                       5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
086540728099                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
DEWI LESTARI                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
dewi@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M006 - Dewi Lestari                                                             

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   12 Dew          ****M006                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Dewi Lestari........                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Dewi Lestari                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Dewi Lestari                                                        5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
086540728033                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
ASEP FATAHILAH                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
asep@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Bandung                                                                         

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M007 - Asep Fatahilah                                                           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   14 Ase          ****M007                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Asep Fatahilah......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Asep Fatahilah                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Asep Fatahilah                                                      5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
086398521499                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
	WAHYUDI                                                                        

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
wahyudi@email.com                                                               

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M008 - 	Wahyudi                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                    8 	Wa          ****M008                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
	Wahyudi............                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
	Wahyudi                                                                        

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
	Wahyudi                                                            8           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
088578800372                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
RIZKY                                                                           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
rizky@email.com                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M009 - Rizky                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                    6 Riz          ****M009                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Rizky ..............                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Rizky                                                                           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Rizky                                                               6           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
08870648624                                                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
ENTIN                                                                           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
entin@email.com                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Bandung                                                                         

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M010 - Entin                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                    5 Ent          ****M010                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Entin...............                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Entin                                                                           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Entin                                                               6           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
08725708811                                                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
WINA                                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
wina@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Bandung                                                                         

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M011 - Wina                                                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                    4 Win          ****M011                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Wina................                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Wina                                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Win                                                                 5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
+628110387823                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
DIMAS FIRDAUS                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
dimas@email.com                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M012 - Dimas Firdaus                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   13 Dim          ****M012                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Dimas Firdaus.......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Dimas Firdaus                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Dimas Firdaus                                                       6           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
+6281103878238                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
SURYA BINTANG                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
surya@email.com                                                                 

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M013 - Surya Bintang                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                   13 Sur          ****M013                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Surya Bintang.......                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Surya Bintang                                                                   

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Surya Bintang                                                       6           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
086586252777                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
SITI                                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
siti@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Purwokerto                                                                      

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M014 - Siti                                                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                    4 Sit          ****M014                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Siti................                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Siti                                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Siti                                                                5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
082803231645                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
TONI                                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
toni@email.com                                                                  

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Bandung                                                                         

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
M015 - Toni                                                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                    5 Ton          ****M015                                     

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Toni ...............                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Toni                                                                            

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
Toni                                                                5           

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
083137017800                                                                    

NAMA_KAPITAL_SEMUA                                                              
--------------------------------------------------                              
EMAIL_HURUF_KECIL                                                               
----------------------------------------                                        
TEMPAT_LAHIR_AWAL_KAPITAL                                                       
--------------------------------------------------------------------------------
ID_DAN_NAMA                                                                     
--------------------------------------------------------------------            
PANJANG_KARAKTER_NAMA TIGA_HURUF_P ID_PAD_KIRI                                  
--------------------- ------------ --------------------------------             
NAMA_PAD_KANAN                                                                  
--------------------------------------------------------------------------------
HAPUS_B_DI_KIRI                                                                 
--------------------------------------------------                              
HAPUS_A_DI_KANAN                                   POSISI_KARAKTER_AT           
-------------------------------------------------- ------------------           
FORMAT_NO_HP_BARU                                                               
------------------------------------------------------------                    
                                                                                

15 rows selected.

SQL> SELECT
  2  nama,
  3  tanggal_lahir,
  4  TO_CHAR(tanggal_lahir, 'DD/MM/YYYY') AS format_tgl,
  5  TO_CHAR(tanggal_lahir, 'DY, DD MONTH YYYY') AS format_hari_bulan,
  6  TO_CHAR(SYSDATE, 'HH24:MI:SS AM') AS waktu_sekarang_detail,
  7  ADD_MONTHS(tanggal_lahir, 6) AS umur_ditambah_6_bulan,
  8  SYSDATE AS tanggal_sistem_hari_ini,
  9  LAST_DAY(tanggal_lahir) AS tgl_akhir_di_bulan_lahir,
 10  NEXT_DAY(tanggal_lahir, 'MONDAY') AS senin_berikutnya_setelah_lahir,
 11  MONTHS_BETWEEN(SYSDATE, tanggal_lahir) AS umur_dalam_bulan,
 12  ROUND(tanggal_lahir, 'YEAR') AS pembulatan_tahun_lahir
 13  FROM mahasiswa;

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
Yuda Setiawan                                      15-MAY-99 15/05/1999         
SAT, 15 MAY       1999                                     05:24:33 AM 15-NOV-99
12-MAR-26 31-MAY-99 17-MAY-99       321.910496 01-JAN-99                        
                                                                                
Andi Bagus                                         20-AUG-00 20/08/2000         
SUN, 20 AUGUST    2000                                     05:24:33 AM 20-FEB-01
12-MAR-26 31-AUG-00 21-AUG-00       306.749206 01-JAN-01                        

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
                                                                                
Cecep Nurahman                                     01-DEC-98 01/12/1998         
TUE, 01 DECEMBER  1998                                     05:24:33 AM 01-JUN-99
12-MAR-26 31-DEC-98 07-DEC-98       327.362109 01-JAN-99                        
                                                                                
Ujang Sutisna                                      14-FEB-01 14/02/2001         
WED, 14 FEBRUARY  2001                                     05:24:33 AM 14-AUG-01

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
12-MAR-26 28-FEB-01 19-FEB-01       300.942754 01-JAN-01                        
                                                                                
Fais Harianto                                      11-NOV-99 11/11/1999         
THU, 11 NOVEMBER  1999                                     05:24:33 AM 11-MAY-00
12-MAR-26 30-NOV-99 15-NOV-99       316.039528 01-JAN-00                        
                                                                                
Dewi Lestari                                       05-APR-00 05/04/2000         

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
WED, 05 APRIL     2000                                     05:24:33 AM 05-OCT-00
12-MAR-26 30-APR-00 10-APR-00       311.233077 01-JAN-00                        
                                                                                
Asep Fatahilah                                     25-JUL-97 25/07/1997         
FRI, 25 JULY      1997                                     05:24:33 AM 25-JAN-98
12-MAR-26 31-JUL-97 28-JUL-97       343.587916 01-JAN-98                        
                                                                                

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
	Wahyudi                                           30-SEP-02 30/09/2002         
MON, 30 SEPTEMBER 2002                                     05:24:33 AM 31-MAR-03
12-MAR-26 30-SEP-02 07-OCT-02       281.426625 01-JAN-03                        
                                                                                
Rizky                                              17-MAR-98 17/03/1998         
TUE, 17 MARCH     1998                                     05:24:33 AM 17-SEP-98
12-MAR-26 31-MAR-98 23-MAR-98        335.84598 01-JAN-98                        

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
                                                                                
Entin                                              22-JAN-01 22/01/2001         
MON, 22 JANUARY   2001                                     05:24:33 AM 22-JUL-01
12-MAR-26 31-JAN-01 29-JAN-01        301.68469 01-JAN-01                        
                                                                                
Wina                                               10-OCT-99 10/10/1999         
SUN, 10 OCTOBER   1999                                     05:24:33 AM 10-APR-00

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
12-MAR-26 31-OCT-99 11-OCT-99       317.071787 01-JAN-00                        
                                                                                
Dimas Firdaus                                      08-JUN-00 08/06/2000         
THU, 08 JUNE      2000                                     05:24:33 AM 08-DEC-00
12-MAR-26 30-JUN-00 12-JUN-00       309.136303 01-JAN-00                        
                                                                                
Surya Bintang                                      25-DEC-97 25/12/1997         

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
THU, 25 DECEMBER  1997                                     05:24:33 AM 25-JUN-98
12-MAR-26 31-DEC-97 29-DEC-97       338.587916 01-JAN-98                        
                                                                                
Siti                                               02-MAY-02 02/05/2002         
THU, 02 MAY       2002                                     05:24:33 AM 02-NOV-02
12-MAR-26 31-MAY-02 06-MAY-02       286.329851 01-JAN-02                        
                                                                                

NAMA                                               TANGGAL_L FORMAT_TGL         
-------------------------------------------------- --------- ----------         
FORMAT_HARI_BULAN                                          WAKTU_SEKAR UMUR_DITA
---------------------------------------------------------- ----------- ---------
TANGGAL_S TGL_AKHIR SENIN_BER UMUR_DALAM_BULAN PEMBULATA                        
--------- --------- --------- ---------------- ---------                        
Toni                                               17-AUG-98 17/08/1998         
MON, 17 AUGUST    1998                                     05:24:33 AM 17-FEB-99
12-MAR-26 31-AUG-98 24-AUG-98        330.84598 01-JAN-99                        
                                                                                

15 rows selected.

SQL> SELECT
  2  TO_CHAR(tanggal_lahir, 'DD-MON-YYYY') AS date_ke_string,
  3  TO_CHAR(tinggi_badan, '999.99') AS number_ke_string,
  4  TO_NUMBER('100') + berat_badan AS string_ke_number_kalkulasi,
  5  TO_DATE('01/01/2026', 'DD/MM/YYYY') AS string_ke_date
  6  FROM mahasiswa;

DATE_KE_STRING       NUMBER_ STRING_KE_NUMBER_KALKULASI STRING_KE               
-------------------- ------- -------------------------- ---------               
15-MAY-1999           170.50                        165 01-JAN-26               
20-AUG-2000           160.00                      155.5 01-JAN-26               
01-DEC-1998           175.20                        170 01-JAN-26               
14-FEB-2001           158.50                        148 01-JAN-26               
11-NOV-1999           180.00                      180.5 01-JAN-26               
05-APR-2000           165.00                        160 01-JAN-26               
25-JUL-1997           168.50                        168 01-JAN-26               
30-SEP-2002           162.00                        152 01-JAN-26               
17-MAR-1998           172.00                      166.5 01-JAN-26               
22-JAN-2001           155.00                        145 01-JAN-26               
10-OCT-1999           178.50                        175 01-JAN-26               

DATE_KE_STRING       NUMBER_ STRING_KE_NUMBER_KALKULASI STRING_KE               
-------------------- ------- -------------------------- ---------               
08-JUN-2000           160.50                        150 01-JAN-26               
25-DEC-1997           170.00                      162.5 01-JAN-26               
02-MAY-2002           164.00                        156 01-JAN-26               
17-AUG-1998           169.00                        169 01-JAN-26               

15 rows selected.

SQL> SELECT
  2  nama,
  3  tinggi_badan,
  4  berat_badan,
  5  ABS(tinggi_badan - 180) AS jarak_dari_180cm,
  6  MOD(tinggi_badan, 10) AS sisa_bagi_10,
  7  FLOOR(tinggi_badan) AS pembulatan_ke_bawah,
  8  CEIL(tinggi_badan) AS pembulatan_ke_atas,
  9  ROUND(tinggi_badan, 0) AS pembulatan_ke_terdekat,
 10  POWER(berat_badan, 2) AS berat_badan_pangkat_dua
 11  FROM mahasiswa;

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
Yuda Setiawan                                             170.5          65     
             9.5           .5                 170                171            
                   171                    4225                                  
                                                                                
Andi Bagus                                                  160        55.5     
              20            0                 160                160            
                   160                 3080.25                                  

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
                                                                                
Cecep Nurahman                                            175.2          70     
             4.8          5.2                 175                176            
                   175                    4900                                  
                                                                                
Ujang Sutisna                                             158.5          48     
            21.5          8.5                 158                159            

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
                   159                    2304                                  
                                                                                
Fais Harianto                                               180        80.5     
               0            0                 180                180            
                   180                 6480.25                                  
                                                                                
Dewi Lestari                                                165          60     

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
              15            5                 165                165            
                   165                    3600                                  
                                                                                
Asep Fatahilah                                            168.5          68     
            11.5          8.5                 168                169            
                   169                    4624                                  
                                                                                

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
	Wahyudi                                                    162          52     
              18            2                 162                162            
                   162                    2704                                  
                                                                                
Rizky                                                       172        66.5     
               8            2                 172                172            
                   172                 4422.25                                  

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
                                                                                
Entin                                                       155          45     
              25            5                 155                155            
                   155                    2025                                  
                                                                                
Wina                                                      178.5          75     
             1.5          8.5                 178                179            

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
                   179                    5625                                  
                                                                                
Dimas Firdaus                                             160.5          50     
            19.5           .5                 160                161            
                   161                    2500                                  
                                                                                
Surya Bintang                                               170        62.5     

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
              10            0                 170                170            
                   170                 3906.25                                  
                                                                                
Siti                                                        164          56     
              16            4                 164                164            
                   164                    3136                                  
                                                                                

NAMA                                               TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
JARAK_DARI_180CM SISA_BAGI_10 PEMBULATAN_KE_BAWAH PEMBULATAN_KE_ATAS            
---------------- ------------ ------------------- ------------------            
PEMBULATAN_KE_TERDEKAT BERAT_BADAN_PANGKAT_DUA                                  
---------------------- -----------------------                                  
Toni                                                        169          69     
              11            9                 169                169            
                   169                    4761                                  
                                                                                

15 rows selected.

SQL> SET LINESIZE 300;
SQL> SET PAGESIZE 100;
SQL> COMMIT;

Commit complete.

SQL> SPOOL OFF
