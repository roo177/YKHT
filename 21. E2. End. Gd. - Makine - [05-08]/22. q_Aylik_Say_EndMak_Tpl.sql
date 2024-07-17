
-- q_Aylik_Say_EndMak_Tpl - 21.22


SELECT 
    L3_R_Kod, 
    Sum( say_EM ) AS tpl_EM,
    Max( say_EM ) AS max_EM

FROM 
    t_Aylik_Say_EndMak

GROUP BY 
    L3_R_Kod