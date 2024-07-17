
-- q_Analiz_Flat_Alt - 13.62


SELECT * FROM q_Analiz_Flat_Alt_1

UNION ALL

SELECT

    fla_Ver, 
    fla_Poz_Kod, 
    kod_Operator  AS fla_Rayic_Kod, 
    "4. Personel" AS anl_RayicTip,

    ( 1 / fla_P3 ) * fla_P1 * fla_P2 AS p1_Dgr,
    1   AS p2_Dgr, 
    1   AS p3_Dgr

FROM 
    
    q_Analiz_Flat_Alt_1 
    LEFT JOIN 
    q_Makine
    ON 
        q_Analiz_Flat_Alt_1.fla_Rayic_Kod = q_Makine.L3_R_Kod

WHERE

    fla_Rayic_Tip = "1. Amortisman"
    AND
    ttr_Opr_AdmSaat <> 0