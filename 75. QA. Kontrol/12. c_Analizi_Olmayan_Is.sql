
-- c_Analizi_Olmayan_Is - 75.12


SELECT 
    
    A_bV,
    t_Aylik_Mkt_Gider.L4_Kod, 
    t_Analizler.A_L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa

FROM 
    
    k_Pozlar_L4 
    RIGHT JOIN 
    ( 
        t_Aylik_Mkt_Gider 
        LEFT JOIN 
        t_Analizler 
        ON 
            ( t_Aylik_Mkt_Gider.L4_Kod = t_Analizler.A_L4_Kod ) 
            AND 
            ( t_Aylik_Mkt_Gider.ver_B = t_Analizler.A_bV )
    ) 
    ON 
        k_Pozlar_L4.L4_Kod = t_Analizler.A_L4_Kod

WHERE 

    t_Analizler.A_L4_Kod Is Null;