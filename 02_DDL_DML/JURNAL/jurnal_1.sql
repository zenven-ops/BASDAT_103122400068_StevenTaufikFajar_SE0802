SQL> --nama : Steven Taufik Fajar
SQL> --nim : 103122400068
SQL> CREATE TABLE Film (
  2  id_film VARCHAR2(20) PRIMARY KEY,
  3  judul VARCHAR2(150),
  4  sinopsis CLOB,
  5  tahun NUMBER(4),
  6  durasi NUMBER(3)
  7  );
CREATE TABLE Film (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> desc Film;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL VARCHAR2(20)
 JUDUL                                              VARCHAR2(150)
 SINOPSIS                                           CLOB
 TAHUN                                              NUMBER(4)
 DURASI                                             NUMBER(3)

SQL> CREATE TABLE Theater (
  2  id_theater VARCHAR2(20) PRIMARY KEY,
  3  harga NUMBER(12, 2),
  4  kapasitas NUMBER(4),
  5  kelas VARCHAR2(50)
  6  );
CREATE TABLE Theater (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> desc Theater;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL VARCHAR2(20)
 HARGA                                              NUMBER(12,2)
 KAPASITAS                                          NUMBER(4)
 KELAS                                              VARCHAR2(50)

SQL> CREATE TABLE Member (
  2  id_member VARCHAR2(20) PRIMARY KEY,
  3  nama VARCHAR2(100),
  4  no_hp VARCHAR2(20),
  5  tgl_lahir DATE,
  6  email VARCHAR2(100)
  7  );
CREATE TABLE Member (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> desc Member;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL VARCHAR2(20)
 NAMA                                               VARCHAR2(100)
 NO_HP                                              VARCHAR2(20)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(100)

SQL> CREATE TABLE Inventaris (
  2  id_inventaris VARCHAR2(20) PRIMARY KEY,
  3  id_theater VARCHAR2(20),
  4  nomor_kursi VARCHAR2(10),
  5  CONSTRAINT fk_inv_theater FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
  6  );
CREATE TABLE Inventaris (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> desc Inventaris;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL VARCHAR2(20)
 ID_THEATER                                         VARCHAR2(20)
 NOMOR_KURSI                                        VARCHAR2(10)

SQL> CREATE TABLE Jadwal (
  2  id_jadwal VARCHAR2(20) PRIMARY KEY,
  3  id_film VARCHAR2(20),
  4  id_theater VARCHAR2(20),
  5  periode_start TIMESTAMP,
  6  periode_end TIMESTAMP,
  7  CONSTRAINT fk_jadwal_film FOREIGN KEY (id_film) REFERENCES Film(id_film),
  8  CONSTRAINT fk_jadwal_theater FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
  9  );
CREATE TABLE Jadwal (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> desc Jadwal;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL VARCHAR2(20)
 ID_FILM                                            VARCHAR2(20)
 ID_THEATER                                         VARCHAR2(20)
 PERIODE_START                                      TIMESTAMP(6)
 PERIODE_END                                        TIMESTAMP(6)

SQL> CREATE TABLE Transaksi (
  2  kode_pemesanan VARCHAR2(50) PRIMARY KEY,
  3  id_jadwal VARCHAR2(20),
  4  id_member VARCHAR2(20),
  5  status VARCHAR2(20),
  6  tanggal TIMESTAMP,
  7  total_harga NUMBER(12, 2),
  8  CONSTRAINT fk_trx_jadwal FOREIGN KEY (id_jadwal) REFERENCES Jadwal(id_jadwal),
  9  CONSTRAINT fk_trx_member FOREIGN KEY (id_member) REFERENCES Member(id_member)
 10  );
CREATE TABLE Transaksi (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> desc Transaksi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL VARCHAR2(50)
 ID_JADWAL                                          VARCHAR2(20)
 ID_MEMBER                                          VARCHAR2(20)
 STATUS                                             VARCHAR2(20)
 TANGGAL                                            TIMESTAMP(6)
 TOTAL_HARGA                                        NUMBER(12,2)

SQL> INSERT INTO Film VALUES ('F001', 'Fight Club', 'kisah penjual sabun', 1999, 180);

1 row created.

SQL> INSERT INTO Film VALUES ('F002', 'Interstellar', 'Astronot masuk ke black hole', 2014, 169);

1 row created.

SQL> SELECT * FORM Film;
SELECT * FORM Film
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FROM Film;

ID_FILM                                                                         
--------------------                                                            
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
F001                                                                            
Fight Club                                                                      
kisah penjual sabun                                                             
      1999        180                                                           
                                                                                

ID_FILM                                                                         
--------------------                                                            
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
F002                                                                            
Interstellar                                                                    
Astronot masuk ke black hole                                                    
      2014        169                                                           
                                                                                

SQL> INSERT INTO Theater VALUES ('T001', 50000, 100, 'Reguler');

1 row created.

SQL> INSERT INTO Theater VALUES ('T002', 100000, 50, 'Premiere');

1 row created.

SQL> SELECT * FORM Theater;
SELECT * FORM Theater
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FROM Theater;

ID_THEATER                HARGA  KAPASITAS                                      
-------------------- ---------- ----------                                      
KELAS                                                                           
--------------------------------------------------                              
T001                      50000        100                                      
Reguler                                                                         
                                                                                
T002                     100000         50                                      
Premiere                                                                        
                                                                                

SQL> INSERT INTO Member VALUES ('M001', 'Mas Amba', '08123456789', TO_DATE('1995-05-15', 'YYYY-MM-DD'), 'ambaganteng@email.com');

1 row created.

SQL> INSERT INTO Member VALUES ('M002', 'Siti Stabilizer', '08987654321', TO_DATE('1998-10-20', 'YYYY-MM-DD'), 'siticantik@email.com');

1 row created.

SQL> SELECT * FROM Member;

ID_MEMBER                                                                       
--------------------                                                            
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP                TGL_LAHIR                                                  
-------------------- ---------                                                  
EMAIL                                                                           
--------------------------------------------------------------------------------
M001                                                                            
Mas Amba                                                                        
08123456789          15-MAY-95                                                  
ambaganteng@email.com                                                           
                                                                                

ID_MEMBER                                                                       
--------------------                                                            
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP                TGL_LAHIR                                                  
-------------------- ---------                                                  
EMAIL                                                                           
--------------------------------------------------------------------------------
M002                                                                            
Siti Stabilizer                                                                 
08987654321          20-OCT-98                                                  
siticantik@email.com                                                            
                                                                                

SQL> INSERT INTO Inventaris VALUES ('INV001', 'T001', 'A1');

1 row created.

SQL> INSERT INTO Inventaris VALUES ('INV002', 'T001', 'A2');

1 row created.

SQL> INSERT INTO Inventaris VALUES ('INV003', 'T002', 'VIP-1');

1 row created.

SQL> SELECT * FROM inventaris;

ID_INVENTARIS        ID_THEATER           NOMOR_KURS                            
-------------------- -------------------- ----------                            
INV001               T001                 A1                                    
INV002               T001                 A2                                    
INV003               T002                 VIP-1                                 

SQL> INSERT INTO Jadwal VALUES ('J001', 'F001', 'T001', TO_TIMESTAMP('2024-03-15 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-15 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));

1 row created.

SQL> INSERT INTO Jadwal VALUES ('J002', 'F002', 'T002', TO_TIMESTAMP('2024-03-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-15 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));

1 row created.

SQL> SELECT * FROM Jadwal;

ID_JADWAL            ID_FILM              ID_THEATER                            
-------------------- -------------------- --------------------                  
PERIODE_START                                                                   
---------------------------------------------------------------------------     
PERIODE_END                                                                     
---------------------------------------------------------------------------     
J001                 F001                 T001                                  
15-MAR-24 01.00.00.000000 PM                                                    
15-MAR-24 04.00.00.000000 PM                                                    
                                                                                
J002                 F002                 T002                                  
15-MAR-24 07.00.00.000000 PM                                                    
15-MAR-24 10.00.00.000000 PM                                                    

ID_JADWAL            ID_FILM              ID_THEATER                            
-------------------- -------------------- --------------------                  
PERIODE_START                                                                   
---------------------------------------------------------------------------     
PERIODE_END                                                                     
---------------------------------------------------------------------------     
                                                                                

SQL> INSERT INTO Transaksi VALUES ('TRX-001', 'J001', 'M001', 'LUNAS', TO_TIMESTAMP('2024-03-14 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 50000);

1 row created.

SQL> INTO Transaksi VALUES ('TRX-002', 'J002', 'M002', 'PENDING', TO_TIMESTAMP('2024-03-14 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 100000);
SP2-0734: unknown command beginning "INTO Trans..." - rest of line ignored.
SQL> INSERT INTO Transaksi VALUES ('TRX-002', 'J002', 'M002', 'PENDING', TO_TIMESTAMP('2024-03-14 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 100000);

1 row created.

SQL> SELECT * FROM Transaksi;

KODE_PEMESANAN                                     ID_JADWAL                    
-------------------------------------------------- --------------------         
ID_MEMBER            STATUS                                                     
-------------------- --------------------                                       
TANGGAL                                                                         
---------------------------------------------------------------------------     
TOTAL_HARGA                                                                     
-----------                                                                     
TRX-001                                            J001                         
M001                 LUNAS                                                      
14-MAR-24 10.30.00.000000 AM                                                    
      50000                                                                     
                                                                                

KODE_PEMESANAN                                     ID_JADWAL                    
-------------------------------------------------- --------------------         
ID_MEMBER            STATUS                                                     
-------------------- --------------------                                       
TANGGAL                                                                         
---------------------------------------------------------------------------     
TOTAL_HARGA                                                                     
-----------                                                                     
TRX-002                                            J002                         
M002                 PENDING                                                    
14-MAR-24 11.00.00.000000 AM                                                    
     100000                                                                     
                                                                                

SQL> UPDATE Theater SET harga = 120000 WHERE id_theater = 'T002';

1 row updated.

SQL> SELECT * FROM Theater;

ID_THEATER                HARGA  KAPASITAS                                      
-------------------- ---------- ----------                                      
KELAS                                                                           
--------------------------------------------------                              
T001                      50000        100                                      
Reguler                                                                         
                                                                                
T002                     120000         50                                      
Premiere                                                                        
                                                                                

SQL> UPDATE Member SET no_hp = '086969696969' WHERE id_member = 'M001';

1 row updated.

SQL> SELECT * FROM Member;

ID_MEMBER                                                                       
--------------------                                                            
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP                TGL_LAHIR                                                  
-------------------- ---------                                                  
EMAIL                                                                           
--------------------------------------------------------------------------------
M001                                                                            
Mas Amba                                                                        
086969696969         15-MAY-95                                                  
ambaganteng@email.com                                                           
                                                                                

ID_MEMBER                                                                       
--------------------                                                            
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP                TGL_LAHIR                                                  
-------------------- ---------                                                  
EMAIL                                                                           
--------------------------------------------------------------------------------
M002                                                                            
Siti Stabilizer                                                                 
08987654321          20-OCT-98                                                  
siticantik@email.com                                                            
                                                                                

SQL> UPDATE Transaksi SET status = 'LUNAS' WHERE kode_pemesanan = 'TRX-002';

1 row updated.

SQL> SELECT * FROM Transaksi;

KODE_PEMESANAN                                     ID_JADWAL                    
-------------------------------------------------- --------------------         
ID_MEMBER            STATUS                                                     
-------------------- --------------------                                       
TANGGAL                                                                         
---------------------------------------------------------------------------     
TOTAL_HARGA                                                                     
-----------                                                                     
TRX-001                                            J001                         
M001                 LUNAS                                                      
14-MAR-24 10.30.00.000000 AM                                                    
      50000                                                                     
                                                                                

KODE_PEMESANAN                                     ID_JADWAL                    
-------------------------------------------------- --------------------         
ID_MEMBER            STATUS                                                     
-------------------- --------------------                                       
TANGGAL                                                                         
---------------------------------------------------------------------------     
TOTAL_HARGA                                                                     
-----------                                                                     
TRX-002                                            J002                         
M002                 LUNAS                                                      
14-MAR-24 11.00.00.000000 AM                                                    
     100000                                                                     
                                                                                

SQL> UPDATE Film SET durasi = 170 WHERE id_film = 'F002';

1 row updated.

SQL> SELECT * FROM Film;

ID_FILM                                                                         
--------------------                                                            
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
F001                                                                            
Fight Club                                                                      
kisah penjual sabun                                                             
      1999        180                                                           
                                                                                

ID_FILM                                                                         
--------------------                                                            
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
F002                                                                            
Interstellar                                                                    
Astronot masuk ke black hole                                                    
      2014        170                                                           
                                                                                

SQL> UPDATE Theater SET kelas = 'Standar' WHERE id_theater = 'T001';

1 row updated.

SQL> SELECT * FROM Theater;

ID_THEATER                HARGA  KAPASITAS                                      
-------------------- ---------- ----------                                      
KELAS                                                                           
--------------------------------------------------                              
T001                      50000        100                                      
Standar                                                                         
                                                                                
T002                     120000         50                                      
Premiere                                                                        
                                                                                

SQL> DELETE FROM Transaksi WHERE kode_pemesanan = 'TRX-002';

1 row deleted.

SQL> SELECT * FROM Transaksi;

KODE_PEMESANAN                                     ID_JADWAL                    
-------------------------------------------------- --------------------         
ID_MEMBER            STATUS                                                     
-------------------- --------------------                                       
TANGGAL                                                                         
---------------------------------------------------------------------------     
TOTAL_HARGA                                                                     
-----------                                                                     
TRX-001                                            J001                         
M001                 LUNAS                                                      
14-MAR-24 10.30.00.000000 AM                                                    
      50000                                                                     
                                                                                

SQL> DELETE FROM Inventaris WHERE id_inventaris = 'INV002';

1 row deleted.

SQL> SELECT * FROM Inventaris;

ID_INVENTARIS        ID_THEATER           NOMOR_KURS                            
-------------------- -------------------- ----------                            
INV001               T001                 A1                                    
INV003               T002                 VIP-1                                 

SQL> COMMIT;

Commit complete.

SQL> SPOOL OFF
