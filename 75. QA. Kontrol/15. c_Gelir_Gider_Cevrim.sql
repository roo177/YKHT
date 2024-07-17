
-- c_Alt_GelirVar_GiderYok - 75.15


SELECT 

    t_Aylik_Mkt_Gelir.ver_B, 
    k_Pozlar_L4.L4_Kod, 
    
    t_Aylik_Mkt_Gelir.AYGM_Poz, 
    k_Pozlar_L4.L4_Ack_Kisa,

    L4_Kod_Gider  
    
FROM 
    (
        k_Pozlar_L4 
        INNER JOIN 
        t_Aylik_Mkt_Gelir 
        ON 
            k_Pozlar_L4.AYGM_Poz = t_Aylik_Mkt_Gelir.AYGM_Poz
    ) 
    LEFT JOIN 
    t_Gider_Gelir_Esleme 
    ON 
        k_Pozlar_L4.L4_Kod = t_Gider_Gelir_Esleme.L4_Kod_Gelir;