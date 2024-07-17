
-- c_Analiz_Mak_Kapsam -- 12.03


SELECT 
    
    t_Makine.L3_R_Kod, 
    
    t_Analizler.A_L3_R_Kod, 
    t_Analizler.A_bV, 
    
    k_Rayicler_L3.L3_R_Aciklama

FROM 
    (
        (
            t_Makine 
            RIGHT JOIN 
            q_Aylik_Mak_Saha 
            ON t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod
        ) 
        LEFT JOIN 
        t_Analizler 
        ON t_Makine.L3_R_Kod = t_Analizler.A_L3_R_Kod
    ) 
    LEFT JOIN k_Rayicler_L3 
    ON t_Makine.L3_R_Kod = k_Rayicler_L3.L3_R_Kod

GROUP BY 

    t_Makine.L3_R_Kod, 
    t_Analizler.A_L3_R_Kod,
    t_Analizler.A_bV, 
    k_Rayicler_L3.L3_R_Aciklama