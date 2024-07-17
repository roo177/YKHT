
-- q_Yrd_Analizler - 13.02.c


SELECT * FROM t_Yrd_Analizler

UNION

SELECT

    A_bV, 
    A_L4_Kod, 
    M_L4_Opr        AS anl_L3_R_Kod, 
    "4. Personel"   AS anl_RayicTip,

    "İlgili Makine Birim Saati", 
    ( 1 / A_P3_Dgr ) * A_P1_Dgr * A_P2_Dgr,

    "-",
    1, 
    "-", 
    1

FROM 
    
    t_Yrd_Analizler 
    LEFT JOIN 
    t_Makine 
    ON 
        t_Yrd_Analizler.A_L3_R_Kod = t_Makine.L3_R_Kod

WHERE

    A_Rayic_Tip = "1. Amortisman"
    AND
    M_L4_Opr <> "-"