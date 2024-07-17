
-- q_Analizler_Detay - 51.11


SELECT 
    
    A_L4_Kod                    AS anz_Poz_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa     AS anz_Poz_Aciklama, 

    A_L3_R_Kod                  AS anz_Rayic_Kod, 
    k_Rayicler_L3.L3_R_Aciklama AS anz_Rayic_Aciklama, 

    A_Rayic_Tip                 AS anz_Rayic_Tip, 

    A_P1_Ack                    AS anz_Crp_1_Aciklama, 
    A_P1_Dgr                    AS anz_Crp_1,
    A_P2_Ack                    AS anz_Crp_2_Aciklama,                    
    A_P2_Dgr                    AS anz_Crp_2, 
    A_P3_Ack                    AS anz_Crp_3_Aciklama, 
    A_P3_Dgr                    AS anz_Crp_3,

    A

FROM 
    k_Rayicler_L3 
    RIGHT JOIN 
    (
        k_Pozlar_L4 
        RIGHT JOIN t_Analizler 
        ON k_Pozlar_L4.L4_Kod = t_Analizler.A_L4_Kod
    ) 
    ON k_Rayicler_L3.L3_R_Kod = t_Analizler.A_L3_R_Kod