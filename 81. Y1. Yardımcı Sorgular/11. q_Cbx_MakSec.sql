
-- q_Cbx_MakSec - 81.11


SELECT 

    L3_R_Kod & " - " & L3_R_Aciklama AS col_Display
    L3_R_Kod                         AS col_Select

FROM 
    k_Rayicler_L3

WHERE 
    k_Rayicler_L3.L3_R_Kod LIKE "1*"

ORDER BY 
    k_Rayicler_L3.L3_R_Aciklama