
-- q_Y_Analizler_L3 - 13.23


SELECT 
    
    q_Y_Analizler_L3_Alt.Y_L4_Kod       AS A_L4_Kod, 
    k_Rayicler_L3_1.L3_R_Aciklama       AS L4_Ack_Kisa, 
    q_Y_Analizler_L3_Alt.Y_Rayic_Tip    AS A_Rayic_Tip, 
    q_Y_Analizler_L3_Alt.Y_L3_R_Kod     AS A_L3_R_Kod, 
    k_Rayicler_L3.L3_R_Aciklama, 
    k_Rayicler_L3.L2_R_Kod, 
    k_Rayicler_L3.L3_R_Birim, 
    
    Sum( Y_BM ) AS a_BM, 
    Sum( Y_BF ) AS a_BF, 
    Sum( Y_BT ) AS a_BT

FROM 
    (
        q_Y_Analizler_L3_Alt 
        LEFT JOIN 
        k_Rayicler_L3 
        ON q_Y_Analizler_L3_Alt.Y_L3_R_Kod = k_Rayicler_L3.L3_R_Kod
    ) 
    LEFT JOIN 
    k_Rayicler_L3 AS k_Rayicler_L3_1 
    ON 
        q_Y_Analizler_L3_Alt.Y_L4_Kod = k_Rayicler_L3_1.L3_R_Kod

GROUP BY 
    
    q_Y_Analizler_L3_Alt.Y_L4_Kod, 
    k_Rayicler_L3_1.L3_R_Aciklama, 
    q_Y_Analizler_L3_Alt.Y_Rayic_Tip, 
    q_Y_Analizler_L3_Alt.Y_L3_R_Kod, 
    k_Rayicler_L3.L3_R_Aciklama, 
    k_Rayicler_L3.L2_R_Kod, 
    k_Rayicler_L3.L3_R_Birim

HAVING Sum( Y_BT ) <> 0