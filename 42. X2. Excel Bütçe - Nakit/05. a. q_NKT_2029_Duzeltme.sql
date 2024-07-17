
-- q_NKT_2029_Duzeltme - 42.06


UPDATE 
    t_Excel_Aylik_NKT 
    SET 
    t_Excel_Aylik_NKT.xls_Ay = #12/1/2028#

WHERE 
    t_Excel_Aylik_NKT.xls_Ay > #12/1/2028#
