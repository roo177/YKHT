
-- q_Kullanilmayan_R - 75.22


SELECT 
    
    t_R_Fiyatlar.F_Kod, 
    k_Rayicler_L3.L3_R_Aciklama,
    t_R_Fiyatlar.F_Not

FROM 
    (
        t_R_Fiyatlar 
        LEFT JOIN 
        q_Rayic_Kullanim 
        ON 
            t_R_Fiyatlar.F_Kod = q_Rayic_Kullanim.A_L3_R_Kod
    ) 
    LEFT JOIN 
    k_Rayicler_L3 
    ON 
        t_R_Fiyatlar.F_Kod = k_Rayicler_L3.L3_R_Kod

WHERE

    t_R_Fiyatlar.F_Kod <> "3_ML-1000-0040"
    AND
    q_Rayic_Kullanim.A_L3_R_Kod Is Null
    AND
    F_Ver = DLookup( "ver_B", "t_Kabuller" )

GROUP BY 

    t_R_Fiyatlar.F_Kod,
    k_Rayicler_L3.L3_R_Aciklama, 
    t_R_Fiyatlar.F_Not