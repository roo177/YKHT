
-- q_Analizler_L3 - 13.13


SELECT 
    
    A_L4_Kod, 
    L4_Ack_Kisa, 
    A_Rayic_Tip, 
    L3_R_Aciklama, 
    L2_R_Kod, 
    A_L3_R_Kod, 
    L3_R_Birim, 
    
    Sum( D_BM ) AS a_BM, 
    BF AS a_BF, 
    Sum( D_BT ) AS a_BT

FROM 
    ( 
        q_Analizler_L3_Alt LEFT JOIN k_Rayicler_L3 ON q_Analizler_L3_Alt.A_L3_R_Kod = k_Rayicler_L3.L3_R_Kod
    ) 
    LEFT JOIN 
    k_Pozlar_L4 ON q_Analizler_L3_Alt.A_L4_Kod = k_Pozlar_L4.L4_Kod

GROUP BY 
    
    A_L4_Kod, 
    L4_Ack_Kisa, 
    A_Rayic_Tip, 
    L3_R_Aciklama, 
    L2_R_Kod, 
    A_L3_R_Kod, 
    L3_R_Birim,
    BF

HAVING Sum( D_BT ) <> 0