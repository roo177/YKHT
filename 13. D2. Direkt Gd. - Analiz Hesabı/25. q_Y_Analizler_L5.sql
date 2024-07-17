
-- q_Y_Analizler_L5 - 13.25


SELECT 
    
    q_Yrd_Analizler.A_Rayic_Tip AS Y_Rayic_Tip,
    q_Yrd_Analizler.A_L4_Kod    AS Y_L4_Kod, 
    q_Yrd_Analizler.A_L3_R_Kod  AS Y_L3_R_Kod,
     
    q_Yrd_Analizler.A_P1_Dgr    AS Y_P1_Dgr,
    q_Yrd_Analizler.A_P2_Dgr    AS Y_P2_Dgr,
    q_Yrd_Analizler.A_P3_Dgr    AS Y_P3_Dgr,

    Round(
        
        IIf(
            Y_Rayic_Tip = "1. Amortisman",
            Y_P1_Dgr * Y_P2_Dgr / Y_P3_Dgr,
            Y_P1_Dgr * Y_P2_Dgr * Y_P3_Dgr
        )
        ,6
    ) AS BM, 


    Round( 

            IIf(    
                Y_Rayic_Tip = "1. Amortisman",
                ttr_Amr_Baz / tpl_MakineSaat,

            IIf(    Y_Rayic_Tip = "3. Bakım / Onarım", 
                    IIf( Y_L3_R_Kod = "1_MK-9000-9000", 1, ttr_Sa_Bakim ),

            IIf(    Y_Rayic_Tip = "4. Personel", 
                    p_Saatlik_Mly,
            
            F_BF
        
        ))),
        4

    ) AS BF, 
        

    Round(
        
        IIf(
            Y_Rayic_Tip = "3. Bakım / Onarım" AND Y_L3_R_Kod = "1_MK-9000-9000",
            Y_P1_Dgr,
            BM * BF
        )
        ,4
    ) AS BT


FROM 
    (
        (
            (
                q_Yrd_Analizler 
                LEFT JOIN 
                q_Makine 
                ON 
                    q_Yrd_Analizler.A_L3_R_Kod = q_Makine.L3_R_Kod
            ) 
            LEFT JOIN 
            q_KNS_Tpl_MakSa 
            ON 
                q_Yrd_Analizler.A_L3_R_Kod = q_KNS_Tpl_MakSa.kod_MakineSaat
        ) 
        LEFT JOIN 
        q_Personel 
        ON 
            q_Yrd_Analizler.A_L3_R_Kod = q_Personel.p_Kod
    ) 
    LEFT JOIN 
    t_R_Fiyatlar 
    ON 
        (q_Yrd_Analizler.A_L3_R_Kod = t_R_Fiyatlar.F_Kod) 
        AND 
        (q_Yrd_Analizler.A_bV = t_R_Fiyatlar.F_ver)

WHERE 
    q_Yrd_Analizler.a_bV = DLookup( "ver_B", "t_Kabuller" )

ORDER BY 

    q_Yrd_Analizler.A_L4_Kod, 
    q_Yrd_Analizler.A_Rayic_Tip, 
    q_Yrd_Analizler.A_L3_R_Kod;