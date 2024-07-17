
--  c_Mkt_GiderVar_GelirYok - 75.15


SELECT 
    
    c_Gelir_Gider_Cevrim.ver_B, 
    t_Aylik_Mkt_Gider.L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    c_Gelir_Gider_Cevrim.AYGM_Poz

FROM 

    k_Pozlar_L4 
    RIGHT JOIN 
    (
        t_Aylik_Mkt_Gider 
        LEFT JOIN 
        c_Gelir_Gider_Cevrim 
        ON 
            (t_Aylik_Mkt_Gider.L4_Kod = c_Gelir_Gider_Cevrim.L4_Kod_Gider) 
            AND 
            (t_Aylik_Mkt_Gider.ver_B = c_Gelir_Gider_Cevrim.ver_B)
    ) 
    ON k_Pozlar_L4.L4_Kod = t_Aylik_Mkt_Gider.L4_Kod

WHERE 

    t_Aylik_Mkt_Gider.L4_Kod Is Null;