
-- q_RB_NKT_2029_Duzeltme - 42.06


UPDATE 
    t_Excel_Aylik_RB_NKT 
    SET 
    t_Excel_Aylik_RB_NKT.xls_Ay = #12/1/2028#

WHERE 
    t_Excel_Aylik_RB_NKT.xls_Ay > #12/1/2028#
