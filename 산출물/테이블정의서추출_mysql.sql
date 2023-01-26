-- 테이블목록
SELECT DISTINCT 
       table_name 테이블명
       , table_comment 테이블한글명
    FROM
       information_schema.TABLES WHERE table_schema='limenet'
;


-- 테이블정의서
SELECT
    t1.table_name  as "테이블명"
   , t1.table_comment "테이블한글명"
   , column_name "컬럼명"
   , column_comment "컬럼한글명"
   , data_type "데이터타입"
   , column_type "컬럼타입"
   , column_key "컬럼키"
   , is_nullable "null 여부"
   , column_default "컬럼 기본값"
   , extra "자동여부"
FROM
   (SELECT
       table_name, table_comment
    FROM
       information_schema.TABLES WHERE table_schema='limenet') t1,
   (SELECT
       table_name, column_name, data_type, column_type, column_key, is_nullable, column_default, extra, column_comment, ordinal_position
    FROM
       information_schema.COLUMNS WHERE table_schema='limenet') t2
WHERE
    t1.table_name = t2.table_name
ORDER BY
    t1.table_name, ordinal_position;
    
   





       
