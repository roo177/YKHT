
-- q_Analizler_L1 - 13.11


SELECT 
    
    q_Analizler_L3_Alt.A_L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    Sum( q_Analizler_L3_Alt.D_BT ) AS Birim_Fiyat, 
    k_Pozlar_L4.L4_Birim, 
    k_Pozlar_L4.L4_Ack_Kisa

FROM 
    q_Analizler_L3_Alt 
    LEFT JOIN k_Pozlar_L4 
    ON q_Analizler_L3_Alt.A_L4_Kod = k_Pozlar_L4.L4_Kod

GROUP BY 
    q_Analizler_L3_Alt.A_L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    k_Pozlar_L4.L4_Birim, 
    k_Pozlar_L4.L4_Ack_Kisa;