
-- q_Y_Analizler_L3_Alt - 13.24


SELECT 

    Y_Rayic_Tip, 
    Y_L4_Kod, 
    
    Y_L3_R_Kod, 
    Sum( BM )   AS Y_BM, 
    BF          AS Y_BF,
    Sum( BT )   AS Y_BT 

FROM 
    
    q_Y_Analizler_L5

GROUP BY 
    
    Y_Rayic_Tip, 
    Y_L4_Kod, 
    Y_L3_R_Kod, 
    BF