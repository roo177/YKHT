
-- q_Analizler_L3_Alt - 13.14


SELECT 
    
    A_Rayic_Tip, 
    A_L4_Kod, 
    A_L3_R_Kod, 
    Sum( BM ) AS D_BM, 
    BF, 
    Sum( BT ) AS D_BT, 
    FF_Etki

FROM 
    
    q_Analizler_L5

GROUP BY 

    A_Rayic_Tip, 
    A_L4_Kod, 
    A_L3_R_Kod, 
    BF, 
    FF_Etki;