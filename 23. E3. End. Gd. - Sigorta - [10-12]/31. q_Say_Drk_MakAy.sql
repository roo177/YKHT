
-- q_Say_Drk_MakAy - 23.31


SELECT 

    t_Analizler.A_L3_R_Kod AS mak_Kod, 
    Tarih AS mak_Tarih,
    
    Sum( 
        Round( 
            A_P1_Dgr / A_P3_Dgr * Miktar 
            / ( a_Gnlk_Cals_Saat * g_Aylik_Calisma_Gunu ), 2 
        ) 
    ) AS mak_MakAy

FROM 
        (
            (
                t_Analizler 
                LEFT JOIN a_t_Aylik_Mkt_Gider_Flat 
                ON t_Analizler.A_L4_Kod = a_t_Aylik_Mkt_Gider_Flat.L4_Kod
            ) 
            LEFT JOIN q_Tpl_MakSa 
            ON t_Analizler.A_L3_R_Kod = q_Tpl_MakSa.A_L3_R_Kod
        )
        LEFT JOIN 
        q_Kabuller_L4 
        ON t_Analizler.A_L4_Kod = q_Kabuller_L4.L4_Kod

WHERE
    t_Analizler.A_Rayic_Tip = "1. Amortisman"

GROUP BY
    t_Analizler.A_L3_R_Kod,
    Tarih

ORDER BY 
    t_Analizler.A_L3_R_Kod,
    Tarih