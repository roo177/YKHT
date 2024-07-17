
-- q_v2_Excel_Aylik - 41.51


SELECT 

    T4_Kod      AS xv2_Kod, 
    xls_Ay      AS xv2_Ay, 
    xls_Miktar  AS xv2_Miktar, 
    xls_Tutar   AS xv2_Tutar

FROM 
    t_Excel_Aylik 
    INNER JOIN 
    k_Pozlar_T4 
    ON 
        t_Excel_Aylik.xls_Kod = k_Pozlar_T4.T4_CostCode
