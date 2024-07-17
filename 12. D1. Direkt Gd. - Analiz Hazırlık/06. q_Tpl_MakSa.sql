
-- q_Tpl_Maksa - 12.06


SELECT 

    q_Poz_MakSa.A_L3_R_Kod, 
    Sum( q_Poz_MakSa.Poz_Mak_Sa ) AS Tpl_MakSa

FROM 
    q_Poz_MakSa

GROUP BY 
    q_Poz_MakSa.A_L3_R_Kod;