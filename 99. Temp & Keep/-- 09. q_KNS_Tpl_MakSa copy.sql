
-- q_KNS_Tpl_MakSa - 12.09
-- A_L3_R_Kod       AS kod_MakineSaat,
-- Sum( Tpl_MakSa ) AS tpl_MakineSaat
SELECT 
    
    q_All_Codes.A_L3_R_Kod AS kod_MakineSaat,

    IIf( IsNull( q_Tpl_MakSa.Tpl_MakSa      ), 0, q_Tpl_MakSa.Tpl_MakSa     ) AS maksa_Drk,
    IIf( IsNull( q_Tpl_MakSa_YA.Tpl_MakSa   ), 0, q_Tpl_MakSa_YA.Tpl_MakSa  ) AS maksa_Yrd

FROM
    (
        (
            SELECT A_L3_R_Kod FROM q_Tpl_MakSa
            UNION 
            SELECT A_L3_R_Kod FROM q_Tpl_MakSa_YA

        ) AS q_All_Codes
        
        LEFT JOIN
        q_Tpl_MakSa
        ON
            q_All_Codes.A_L3_R_Kod = q_Tpl_MakSa.A_L3_R_Kod
    )
    LEFT JOIN
    q_Tpl_MakSa_YA
    ON
    q_All_Codes.A_L3_R_Kod = q_Tpl_MakSa_YA.A_L3_R_Kod