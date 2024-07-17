
-- c_Mak_ParktaVar_ButcedeYok - 75.25


SELECT 
    
    q_Aylik_Mak_Saha.mak_Kod, 
    t_Makine.L4_R_Aciklama

FROM 
    (
        t_Makine 
        RIGHT JOIN 
        q_Aylik_Mak_Saha 
        ON 
            t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod
    ) 
    LEFT JOIN 
    q_Rayic_Kullanim 
    ON 
        t_Makine.L3_R_Kod = q_Rayic_Kullanim.A_L3_R_Kod

GROUP BY 
    
    q_Aylik_Mak_Saha.mak_Kod, 
    t_Makine.L4_R_Aciklama, 
    q_Rayic_Kullanim.A_L3_R_Kod

HAVING

    q_Rayic_Kullanim.A_L3_R_Kod Is Null;
