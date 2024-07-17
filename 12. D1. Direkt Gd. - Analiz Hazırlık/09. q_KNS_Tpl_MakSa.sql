
-- q_KNS_Tpl_MakSa - 12.09
-- 1.15667

SELECT 
    
    A_L3_R_Kod       AS kod_MakineSaat,
    Sum( Tpl_MakSa ) AS tpl_MakineSaat

FROM
    (
        SELECT * FROM q_Tpl_MakSa
        UNION ALL
        SELECT * FROM q_Tpl_MakSa_YA
    ) AS Subquery

GROUP BY
    A_L3_R_Kod
