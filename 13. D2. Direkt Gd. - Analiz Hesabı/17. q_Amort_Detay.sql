
-- q_Amort_Detay - 13.17


SELECT 
    
    t_Analizler.A_L4_Kod, 
    t_Analizler.A_L3_R_Kod, 
    t_Analizler.A_Rayic_Tip, 
    t_Analizler.A_P1_Ack, 
    t_Analizler.A_P1_Dgr, 
    t_Analizler.A_P2_Ack, 
    t_Analizler.A_P2_Dgr, 
    t_Analizler.A_P3_Ack, 
    t_Analizler.A_P3_Dgr, 
    
    k_Pozlar_L4.L4_Ack_Kisa, 
    k_Pozlar_L4.L4_Birim,

    k_Rayicler_L3.L3_R_Aciklama,
    q_Tpl_MakSa.Tpl_MakSa, 
    q_Makine.ttr_Amr_Baz

FROM 

    k_Rayicler_L3 
    RIGHT JOIN 
    (
        k_Pozlar_L4 
        RIGHT JOIN 
        (
            (
                t_Analizler 
                LEFT JOIN 
                q_Tpl_MakSa 
                    ON t_Analizler.A_L3_R_Kod = q_Tpl_MakSa.A_L3_R_Kod
            ) 
            LEFT JOIN 
            q_Makine 
                ON t_Analizler.A_L3_R_Kod = q_Makine.L3_R_Kod
        ) 
            ON k_Pozlar_L4.L4_Kod = t_Analizler.A_L4_Kod
    ) 
        ON k_Rayicler_L3.L3_R_Kod = t_Analizler.A_L3_R_Kod

WHERE t_Analizler.A_Rayic_Tip = "1. Amortisman";
