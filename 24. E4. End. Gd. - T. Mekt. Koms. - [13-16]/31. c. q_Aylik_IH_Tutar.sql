
-- q_Aylik_IH_Tutar - 24.31.c


SELECT 
    
    "E-7.FIN-01.TEM-020"    AS ihz_Kod,
    ffa_Ay                  AS ihz_Ay, 
    Sum( ffa_Ihz_Tutar )    AS ihz_Tutar

FROM 
    q_All_Gelir_FF_alt

GROUP BY 
    ffa_Ay;