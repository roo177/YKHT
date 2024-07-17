
-- q_Analiz_Flat_Alt_1 - 13.62


SELECT  
    flt_Ver     AS fla_Ver,
    flt_Poz_Kod AS fla_Poz_Kod,
    flt_Ryc_Kod AS fla_Rayic_Kod,
    flt_Ryc_Tip AS fla_Rayic_Tip,
    flt_P1      AS fla_P1,
    flt_P2      AS fla_P2,
    flt_P3      AS fla_P3

FROM 
    q_Analiz_Flat_Alt_2

UNION

SELECT
    a_bV,
    A_L4_Kod,
    A_L3_R_Kod,
    A_Rayic_Tip,
    A_P1_Dgr,
    A_P2_Dgr,
    A_P3_Dgr

FROM
    t_Analizler

WHERE
    A_Rayic_Tip <> "7. Yardımcı Analiz"
