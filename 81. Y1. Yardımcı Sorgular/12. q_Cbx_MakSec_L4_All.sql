
-- q_Cbx_MakSec - 81.11


SELECT 

    L4_R_Kod & " - " & L4_R_Aciklama AS col_Display,
    L4_R_Kod                         AS col_Select

FROM 
    t_Makine

WHERE

    L3_R_Kod LIKE "1*" 
    OR
    L3_R_Kod LIKE "6*"  

ORDER BY 
    L4_R_Kod