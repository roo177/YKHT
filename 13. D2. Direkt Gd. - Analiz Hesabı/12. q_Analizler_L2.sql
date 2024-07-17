
-- q_Analizler_L2 - 13.12


SELECT 
    q_Analizler_L3_Alt.A_L4_Kod, 
    q_Analizler_L3_Alt.A_Rayic_Tip, 
    Sum( q_Analizler_L3_Alt.D_BT ) AS B_Fiyat

FROM 
    q_Analizler_L3_Alt

GROUP BY 
    q_Analizler_L3_Alt.A_L4_Kod,
    q_Analizler_L3_Alt.A_Rayic_Tip;