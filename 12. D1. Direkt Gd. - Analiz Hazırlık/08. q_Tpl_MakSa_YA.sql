
-- q_Tpl_Maksa_YA - 12.08


SELECT 

    q_Poz_MakSa_YA.A_L3_R_Kod, 
    Sum( q_Poz_MakSa_YA.Poz_Mak_Sa ) AS Tpl_MakSa

FROM 
    q_Poz_MakSa_YA

GROUP BY 
    q_Poz_MakSa_YA.A_L3_R_Kod;