
-- c_Isi_Olmayan_Analiz - 75.13


SELECT 

    A_bV,    
    t_Analizler.A_L4_Kod, 
    t_Aylik_Mkt_Gider.L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa

FROM 
    (
        t_Aylik_Mkt_Gider 
        RIGHT JOIN t_Analizler 
        ON 
            ( t_Aylik_Mkt_Gider.L4_Kod = t_Analizler.A_L4_Kod ) 
            AND 
            ( t_Aylik_Mkt_Gider.ver_B = t_Analizler.A_bV )
    ) 
    LEFT JOIN 
    k_Pozlar_L4 
    ON 
        t_Analizler.A_L4_Kod = k_Pozlar_L4.L4_Kod

WHERE 
    t_Aylik_Mkt_Gider.L4_Kod Is Null

GROUP BY

    A_bV,    
    t_Analizler.A_L4_Kod, 
    t_Aylik_Mkt_Gider.L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa,