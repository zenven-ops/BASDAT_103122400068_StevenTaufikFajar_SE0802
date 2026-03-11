SQL> --nama:Steven Taufik Fajar
SQL> --nim:103122400068
SQL> SELECT * FROM kategori_m;

no rows selected

SQL> dls kategori_m;
SP2-0734: unknown command beginning "dls katego..." - rest of line ignored.
SQL> dsc kategori_m;
SP2-0734: unknown command beginning "dsc katego..." - rest of line ignored.
SQL> desc kategori_m;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_KATEGORI                                        CHAR(5)
 KATEGORI                                           VARCHAR2(60)

SQL> INSERT INTO KATEGORI_M VALUES ('01','rujak kangkung');

1 row created.

SQL> SETECT * FORM KATEGORI_M;
SP2-0734: unknown command beginning "SETECT * F..." - rest of line ignored.
SQL> SELECT * FROM KATEGORI_M;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    rujak kangkung                                                            

SQL> INSERT INTO KATEGORI_M ('02','GADO GADO');
INSERT INTO KATEGORI_M ('02','GADO GADO')
                        *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> INSERT INTO KATEGORI_M VALUES ('02','GADO GADO');

1 row created.

SQL> SELECT * FROM KATEGORI_M;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    rujak kangkung                                                            
02    GADO GADO                                                                 

SQL> UPDATE KATEGORI_M SET KATEGORI='spageti' where ID_KATEGORI='01';

1 row updated.

SQL> SELECT * FROM KATEGORI_M;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    spageti                                                                   
02    GADO GADO                                                                 

SQL> DELETE FORM KATEGORI_M WHERE ID_KATEGORI='02';
DELETE FORM KATEGORI_M WHERE ID_KATEGORI='02'
       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> DELETE FROM KATEGORI_M WHERE ID_KATEGORI='02';

1 row deleted.

SQL> SELECT * FROM KATEGORI_M;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    spageti                                                                   

SQL> CREATE TABLE makanan (ID_makanan Char(5) NOT NUL ENABLE CONSTRAINT pk_makanan PRIMARY KEY, Nama_makanan VARCHAR(70));
CREATE TABLE makanan (ID_makanan Char(5) NOT NUL ENABLE CONSTRAINT pk_makanan PRIMARY KEY, Nama_makanan VARCHAR(70))
                                             *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> CREATE TABLE makanan (ID_makanan Char(5) NOT NULL ENABLE CONSTRAINT pk_makanan PRIMARY KEY, Nama_makanan VARCHAR(70));

Table created.

SQL> desc makanan;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MAKANAN                                NOT NULL CHAR(5)
 NAMA_MAKANAN                                       VARCHAR2(70)

SQL> INSERT INTO makanan VALUES ('01','RENDANG');

1 row created.

SQL> INSERT INTO makanan VALUES ('02','MIE AYAM');

1 row created.

SQL> SELECT * FORM makanan:
  2  ;
SELECT * FORM makanan:
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FORM makanan;
SELECT * FORM makanan
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FROM makanan;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> MERGE INTO kategori_m
  2  l
  3  ;

*
ERROR at line 3:
ORA-02012: missing USING keyword 


SQL> MERGE INTO kategori_m k
  2  U;
U
*
ERROR at line 2:
ORA-02012: missing USING keyword 


SQL> desc kategori_m;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_KATEGORI                                        CHAR(5)
 KATEGORI                                           VARCHAR2(60)

SQL> desc makanan;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MAKANAN                                NOT NULL CHAR(5)
 NAMA_MAKANAN                                       VARCHAR2(70)

SQL> SELECT * FROM kategori_m;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    spageti                                                                   

SQL> SELECT * FROM makanan;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> ALTER TABLE kategori_m RENAME COLUM id_kategori to id_makanan;
ALTER TABLE kategori_m RENAME COLUM id_kategori to id_makanan
                              *
ERROR at line 1:
ORA-14155: missing PARTITION, PARTITIONS, SUBPARTITION, or SUBPARTITIONS 
keyword 


SQL> ALTER TABLE kategori_m
  2  RENAME COLUM id_kategori to id_makanan;
RENAME COLUM id_kategori to id_makanan
       *
ERROR at line 2:
ORA-14155: missing PARTITION, PARTITIONS, SUBPARTITION, or SUBPARTITIONS 
keyword 


SQL> ALTER TABLE kategori_m
  2  RENAME COLUMN id_kategori to id_makanan;
ALTER TABLE kategori_m
            *
ERROR at line 1:
ORA-00054: resource busy and acquire with NOWAIT specified or timeout expired 


SQL> ALTER TABLE kategori_m
  2  A
  3  ;
A
*
ERROR at line 2:
ORA-01735: invalid ALTER TABLE option 


SQL> COMMIT;

Commit complete.

SQL> ALTER TABLE kategori_m
  2  RENAME COLUMN id_kategori to id_makanan;
ALTER TABLE kategori_m
            *
ERROR at line 1:
ORA-00054: resource busy and acquire with NOWAIT specified or timeout expired 


SQL> ALTER TABLE kategori_m
  2  RENAME COLUMN id_kategori to id_makanan;

Table altered.

SQL> SELECT * FROM kategori_m;

ID_MA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    spageti                                                                   

SQL> SELECT * FROM makanan;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> UPDATE KATEGORI_M SET KATEGORI='makanan padang', WHERE ID_MAKANAN='01';
UPDATE KATEGORI_M SET KATEGORI='makanan padang', WHERE ID_MAKANAN='01'
                                                 *
ERROR at line 1:
ORA-01747: invalid user.table.column, table.column, or column specification 


SQL> UPDATE KATEGORI_M SET KATEGORI='makanan padang' WHERE ID_MAKANAN='01';

1 row updated.

SQL> SELECT * FROM KATEGORI_M;

ID_MA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    makanan padang                                                            

SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM buah) m
  3  ON (b.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = b.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, makanan)
  8    VALUES (b.id_makanan, b.nama_makanan);
USING (SELECT id_makanan, nama_makanan FROM buah) m
                                            *
ERROR at line 2:
ORA-00942: table or view does not exist 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM buah) b
  3  ON (b.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = b.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, makanan)
  8    VALUES (b.id_makanan, b.nama_makanan);
USING (SELECT id_makanan, nama_makanan FROM buah) b
                                            *
ERROR at line 2:
ORA-00942: table or view does not exist 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) b
  3  ON (b.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = b.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, makanan)
  8    VALUES (b.id_makanan, b.nama_makanan);
  INSERT (id_makanan, makanan)
                      *
ERROR at line 7:
ORA-00904: "MAKANAN": invalid identifier 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) b
  3  ON (b.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = b.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, nama_makanan)
  8    VALUES (b.id_makanan, b.nama_makanan);
  INSERT (id_makanan, nama_makanan)
                      *
ERROR at line 7:
ORA-00904: "NAMA_MAKANAN": invalid identifier 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (b.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = b.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (b.id_makanan, b.nama_makanan);
ON (b.id_makanan = k.id_makanan)
    *
ERROR at line 3:
ORA-00904: "B"."ID_MAKANAN": invalid identifier 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (m.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = m.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (k.id_makanan, m.nama_makanan);
  UPDATE SET k.makanan = m.nama_makanan
             *
ERROR at line 5:
ORA-00904: "K"."MAKANAN": invalid identifier 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (m.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET m.makanan = k.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (k.id_makanan, m.nama_makanan);
  UPDATE SET m.makanan = k.nama_makanan
             *
ERROR at line 5:
ORA-00904: "M"."MAKANAN": invalid identifier 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (m.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET m.makanan = k.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (k.id_makanan, m.nama_makanan);
  UPDATE SET m.makanan = k.nama_makanan
             *
ERROR at line 5:
ORA-00904: "M"."MAKANAN": invalid identifier 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (m.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.makanan = m.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (k.id_makanan, m.nama_makanan);
  UPDATE SET k.makanan = m.nama_makanan
             *
ERROR at line 5:
ORA-00904: "K"."MAKANAN": invalid identifier 


SQL> SELECT * FROM KATEGORI_M;

ID_MA KATEGORI                                                                  
----- ------------------------------------------------------------              
01    makanan padang                                                            

SQL> SELECT * FROM MAKANAN;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (m.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.KATEGORI = m.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (k.id_makanan, m.nama_makanan);
MERGE INTO kategori_M k
*
ERROR at line 1:
ORA-38101: Invalid column in the INSERT VALUES Clause: "K"."ID_MAKANAN" 


SQL> MERGE INTO kategori_M k
  2  USING (SELECT id_makanan, nama_makanan FROM makanan) m
  3  ON (m.id_makanan = k.id_makanan)
  4  WHEN MATCHED THEN
  5    UPDATE SET k.KATEGORI = m.nama_makanan
  6  WHEN NOT MATCHED THEN
  7    INSERT (id_makanan, kategori)
  8    VALUES (m.id_makanan, m.nama_makanan);

2 rows merged.

SQL> SELECT * FROM kategori_m;

ID_MA KATEGORI                                                                  
----- ------------------------------------------------------------              
02    MIE AYAM                                                                  
01    RENDANG                                                                   

SQL> SELECT * FROM makanan;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> SELECT * FROM makanan;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> UPDATE kategori_m
  2  SET kategori = 'makanan padang'
  3  WHERE id_makanan = '01';

1 row updated.

SQL> SELECT * FROM kategori_m;

ID_MA KATEGORI                                                                  
----- ------------------------------------------------------------              
02    MIE AYAM                                                                  
01    makanan padang                                                            

SQL> SELECT * FROM MAKANAN;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
01    RENDANG                                                                   
02    MIE AYAM                                                                  

SQL> ALTER TABLE MAKANAN
  2  ADD HARGA NUMBER;

Table altered.

SQL> SELECT * FROM MAKANAN;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
     HARGA                                                                      
----------                                                                      
01    RENDANG                                                                   
                                                                                
                                                                                
02    MIE AYAM                                                                  
                                                                                
                                                                                

SQL> UPDATE MAKANAN SET HARGA='10000' Where ID_MAKANAN'01';
UPDATE MAKANAN SET HARGA='10000' Where ID_MAKANAN'01'
                                                 *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> UPDATE MAKANAN SET HARGA='10000' Where ID_MAKANAN='01';

1 row updated.

SQL> UPDATE MAKANAN SET HARGA='12000' Where ID_MAKANAN='02';

1 row updated.

SQL> SELECT * FROM MAKANAN;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
     HARGA                                                                      
----------                                                                      
01    RENDANG                                                                   
     10000                                                                      
                                                                                
02    MIE AYAM                                                                  
     12000                                                                      
                                                                                

SQL> CREATE VIEW RENDANG AS
  2  SELECT ID_MAKANAN, NAMA_MAKANAN,HARGA
  3  FROM MAKANAN
  4  WHERE HARGA>10000;

View created.

SQL> SELECT * FROM RENDANG;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
     HARGA                                                                      
----------                                                                      
02    MIE AYAM                                                                  
     12000                                                                      
                                                                                

SQL> SELECT * FROM MAKANAN;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
     HARGA                                                                      
----------                                                                      
01    RENDANG                                                                   
     10000                                                                      
                                                                                
02    MIE AYAM                                                                  
     12000                                                                      
                                                                                

SQL> CREATE MATERIALIZED VIEW makanan_mw AS
  2  SELECT id_ma, nama_makanan, harga
  3  FROM makanan;
SELECT id_ma, nama_makanan, harga
       *
ERROR at line 2:
ORA-00904: "ID_MA": invalid identifier 


SQL> DESC makanan;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MAKANAN                                NOT NULL CHAR(5)
 NAMA_MAKANAN                                       VARCHAR2(70)
 HARGA                                              NUMBER

SQL> CREATE MATERIALIZED VIEW makanan_mw AS
  2  SELECT ID_MAKANAN, NAMA_MAKANAN,HARGA
  3  FROM MAKANAN;

Materialized view created.

SQL> SELECT * FROM makanan_mv;
SELECT * FROM makanan_mv
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM makanan_mw;

ID_MA NAMA_MAKANAN                                                              
----- ----------------------------------------------------------------------    
     HARGA                                                                      
----------                                                                      
01    RENDANG                                                                   
     10000                                                                      
                                                                                
02    MIE AYAM                                                                  
     12000                                                                      
                                                                                

SQL> SPOOL OFF
