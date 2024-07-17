
-- q_Rayic_Kullanim - 75.21


SELECT 
    A_L3_R_Kod
FROM 
    q_Analizler
WHERE
    A_bV = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    A_L3_R_Kod

UNION

SELECT 
    A_L3_R_Kod
FROM 
    q_Yrd_Analizler
WHERE
    A_bV = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    A_L3_R_Kod

UNION

SELECT 
    t_Makine.M_L4_Opr
FROM 
    t_End_Makine 
    LEFT JOIN t_Makine ON t_End_Makine.L3_R_Kod = t_Makine.L3_R_Kod
WHERE
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    t_Makine.M_L4_Opr
HAVING 
    t_Makine.M_L4_Opr <> "-"

UNION

SELECT 
    L3_R_Kod
FROM
    t_End_Personel
GROUP BY 
    L3_R_Kod

UNION

SELECT 
    L3_R_Kod
FROM
    t_End_Makine
GROUP BY
    t_End_Makine.L3_R_Kod;