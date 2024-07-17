
-- q_say_Drk_AdmAy - 23.32


SELECT 
    
    "Mavi Yaka" AS Pers_Sinif,

    a_t_Aylik_Mkt_Gider_Flat.Tarih, 
    
    Sum( Round( 
        D_BM * Miktar / 
        ( a_Gnlk_Cals_Saat * g_Aylik_Calisma_Gunu ) + 0.5, 0 
        )
    ) AS tpl_D_AdmAy

FROM 
    (
        q_Analizler_L3_Alt 
        LEFT JOIN a_t_Aylik_Mkt_Gider_Flat 
        ON q_Analizler_L3_Alt.A_L4_Kod = a_t_Aylik_Mkt_Gider_Flat.L4_Kod
    ) 
    LEFT JOIN q_Kabuller_L4 
    ON q_Analizler_L3_Alt.A_L4_Kod = q_Kabuller_L4.L4_Kod

WHERE 
    q_Analizler_L3_Alt.A_Rayic_Tip = "4. Personel"

GROUP BY 
    "Mavi Yaka",
    a_t_Aylik_Mkt_Gider_Flat.Tarih;