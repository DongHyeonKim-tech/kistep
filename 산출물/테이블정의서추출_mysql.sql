-- ���̺���
SELECT DISTINCT 
       table_name ���̺��
       , table_comment ���̺��ѱ۸�
    FROM
       information_schema.TABLES WHERE table_schema='limenet'
;


-- ���̺����Ǽ�
SELECT
    t1.table_name  as "���̺��"
   , t1.table_comment "���̺��ѱ۸�"
   , column_name "�÷���"
   , column_comment "�÷��ѱ۸�"
   , data_type "������Ÿ��"
   , column_type "�÷�Ÿ��"
   , column_key "�÷�Ű"
   , is_nullable "null ����"
   , column_default "�÷� �⺻��"
   , extra "�ڵ�����"
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
    
   





       
