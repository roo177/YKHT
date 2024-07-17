
-- c_Mak_ButcedeVar_ParktaYok - 75.24


SELECT 
    
    t_Analizler.A_Rayic_Tip, 
    t_Analizler.A_L3_R_Kod,
    k_Rayicler_L3.L3_R_Aciklama

FROM 
    k_Rayicler_L3 
    RIGHT JOIN 
    (
        (
            (
                t_Analizler 
                LEFT JOIN 
                q_Makine 
                ON 
                    t_Analizler.A_L3_R_Kod = q_Makine.L3_R_Kod
            ) 
            LEFT JOIN 
            q_KNS_Tpl_MakSa 
            ON 
                t_Analizler.A_L3_R_Kod = q_KNS_Tpl_MakSa.kod_MakineSaat
        ) 
        LEFT JOIN 
        t_R_Fiyatlar 
        ON 
            (t_Analizler.A_L3_R_Kod = t_R_Fiyatlar.F_Kod) 
            AND 
            (t_Analizler.A_bV = t_R_Fiyatlar.F_ver)
    ) 
    ON 
        k_Rayicler_L3.L3_R_Kod = t_Analizler.A_L3_R_Kod

WHERE 

    a_bV =  DLookup( "ver_B", "t_Kabuller" ) AND A_Rayic_Tip = "1. Amortisman"  

GROUP BY 

    A_Rayic_Tip, 
    t_Analizler.A_L3_R_Kod,
    k_Rayicler_L3.L3_R_Aciklama

HAVING

    Sum( 
        Round( 
            ( ( ( 1 / A_P3_Dgr ) * A_P1_Dgr * A_P2_Dgr ) / tpl_MakineSaat ) * ttr_Amr_Baz,
            2 
        )
    ) Is Null

ORDER BY 

    A_Rayic_Tip, 
    t_Analizler.A_L3_R_Kod;