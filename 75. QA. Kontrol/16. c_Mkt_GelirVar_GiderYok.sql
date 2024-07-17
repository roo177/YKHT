
-- c_Mkt_GelirVar_GiderYok - 75.14
-- ON İLE ALAKALI PARANTEZLERE DOKUNMA !!!

SELECT 

    c_Gelir_Gider_Cevrim.ver_B, 
    c_Gelir_Gider_Cevrim.AYGM_Poz, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    c_Gelir_Gider_Cevrim.L4_Kod  AS kod_Gelir, 
    t_Aylik_Mkt_Gider.L4_Kod        AS kod_Gider

FROM 
    (
        c_Gelir_Gider_Cevrim 
        LEFT JOIN 
        t_Aylik_Mkt_Gider 
        ON 
            (c_Gelir_Gider_Cevrim.L4_Kod_Gider = t_Aylik_Mkt_Gider.L4_Kod) 
            AND 
            (c_Gelir_Gider_Cevrim.ver_B = t_Aylik_Mkt_Gider.ver_B)
    ) 
    LEFT JOIN 
    k_Pozlar_L4 
    ON 
        c_Gelir_Gider_Cevrim.L4_Kod = k_Pozlar_L4.L4_Kod

ORDER BY 

    c_Gelir_Gider_Cevrim.ver_B, 
    c_Gelir_Gider_Cevrim.L4_Kod;