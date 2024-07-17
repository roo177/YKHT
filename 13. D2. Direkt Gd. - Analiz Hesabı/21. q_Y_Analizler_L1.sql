
-- q_Y_Analizler_L1 - 13.21


SELECT 

    q_Y_Analizler_L3_Alt.Y_L4_Kod   AS A_L4_Kod, 
    k_Rayicler_L3.L3_R_Aciklama     AS L4_Ack_Kisa, 
    Sum(q_Y_Analizler_L3_Alt.Y_BT)  AS Birim_Fiyat, 
    k_Rayicler_L3.L3_R_Birim        AS L4_Birim

FROM 
    (
        q_Y_Analizler_L3_Alt 
        LEFT JOIN 
        k_Pozlar_L4 
        ON 
            q_Y_Analizler_L3_Alt.Y_L4_Kod = k_Pozlar_L4.L4_Kod
    ) 
    LEFT JOIN 
    k_Rayicler_L3 
    ON 
        q_Y_Analizler_L3_Alt.Y_L4_Kod = k_Rayicler_L3.L3_R_Kod

GROUP BY 

    q_Y_Analizler_L3_Alt.Y_L4_Kod,
    k_Rayicler_L3.L3_R_Aciklama, 
    k_Rayicler_L3.L3_R_Birim;