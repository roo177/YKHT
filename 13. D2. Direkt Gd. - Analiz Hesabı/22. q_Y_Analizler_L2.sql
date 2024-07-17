
-- q_Y_Analizler_L2 - 13.22


SELECT 
    q_Y_Analizler_L3_Alt.Y_L4_Kod       AS A_L4_Kod,  
    q_Y_Analizler_L3_Alt.Y_Rayic_Tip    AS A_Rayic_Tip, 
    Sum( q_Y_Analizler_L3_Alt.Y_BT )    AS B_Fiyat

FROM 
    q_Y_Analizler_L3_Alt

GROUP BY 
    q_Y_Analizler_L3_Alt.Y_L4_Kod,
    q_Y_Analizler_L3_Alt.Y_Rayic_Tip