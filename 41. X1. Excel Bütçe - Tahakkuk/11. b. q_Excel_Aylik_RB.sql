
-- q_Excel_Aylik_RB - 41.11.b


SELECT 

    k_Pozlar_L4.L4_Kod_Kns              AS xv1_Kod, 
    t_Excel_Aylik_RB.xls_Ay             AS xv1_Ay, 
    Sum( t_Excel_Aylik_RB.xls_Miktar )  AS xv1_Miktar, 
    Sum( t_Excel_Aylik_RB.xls_Tutar )   AS xv1_Tutar

FROM 
    
    k_Pozlar_L4 
    RIGHT JOIN 
    t_Excel_Aylik_RB 
    ON 
        k_Pozlar_L4.L4_Kod = t_Excel_Aylik_RB.xls_Kod

GROUP BY

    k_Pozlar_L4.L4_Kod_Kns, 
    t_Excel_Aylik_RB.xls_Ay

ORDER BY 

    k_Pozlar_L4.L4_Kod_Kns, 
    t_Excel_Aylik_RB.xls_Ay