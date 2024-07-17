
-- q_Aylik_FF_Tutar - 24.31.a


SELECT 
    
    "E-7.FIN-01.TEM-030"              AS ffk_Kod,

    ffa_Ay                            AS ffk_Ay, 

    Sum( ffa_Tutar                  ) AS ffk_Tutar,
    Sum( ffa_Tutar + ffa_Tpl_Gelir  ) AS tpl_Tutar

FROM 
    q_All_Gelir_FF_alt

GROUP BY 
    ffa_Ay;