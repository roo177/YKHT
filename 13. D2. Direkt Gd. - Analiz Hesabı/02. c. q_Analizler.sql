
-- q_Analizler - 13.02.c


SELECT * FROM t_Analizler

UNION ALL

SELECT

    A_bV, 
    A_L4_Kod, 
    kod_Operator  AS anl_L3_R_Kod, 
    "4. Personel" AS anl_RayicTip,

    "İlgili Makine Birim Saati"            AS p1_Ack, 
    ( 1 / A_P3_Dgr ) * A_P1_Dgr * A_P2_Dgr AS p1_Dgr,

    "-" AS p2_Ack,
    1   AS p2_Dgr, 
    "-" AS p3_Ack, 
    1   AS p3_Dgr

FROM 
    
    t_Analizler 
    LEFT JOIN 
    q_Makine
    ON 
        t_Analizler.A_L3_R_Kod = q_Makine.L3_R_Kod

WHERE

    A_Rayic_Tip = "1. Amortisman"
    AND
    ttr_Opr_AdmSaat <> 0