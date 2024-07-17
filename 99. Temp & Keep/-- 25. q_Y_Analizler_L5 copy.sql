
-- q_Y_Analizler_L5 - 13.25


SELECT 
    
    q_Yrd_Analizler.A_Rayic_Tip AS Y_Rayic_Tip,
    q_Yrd_Analizler.A_L4_Kod    AS Y_L4_Kod, 
    q_Yrd_Analizler.A_L3_R_Kod  AS Y_L3_R_Kod,
     
    q_Yrd_Analizler.A_P1_Dgr    AS Y_P1_Dgr,
    q_Yrd_Analizler.A_P2_Dgr    AS Y_P2_Dgr,
    q_Yrd_Analizler.A_P3_Dgr    AS Y_P3_Dgr,

    t_Analizler.A_P1_Dgr        AS D_P1_Dgr,
    t_Analizler.A_P2_Dgr        AS D_P2_Dgr,
    t_Analizler.A_P3_Dgr        AS D_P3_Dgr,

    t_Analizler.A_L4_Kod,


    Round(
        
        IIf(
            Y_Rayic_Tip = "1. Amortisman",
            Y_P1_Dgr * Y_P2_Dgr / Y_P3_Dgr,
            Y_P1_Dgr * Y_P2_Dgr * Y_P3_Dgr
        )
        ,6
    ) AS BM, 

    IIf(    
        Y_Rayic_Tip = "1. Amortisman",
        Tpl_MakSa,
        0
    ) AS Saat, 

    Round( 

            IIf(    
                Y_Rayic_Tip = "1. Amortisman",
                ( 
                    ( Y_P1_Dgr * Y_P2_Dgr / Y_P3_Dgr )
                    *
                    ( t_Analizler.A_P1_Dgr * t_Analizler.A_P2_Dgr * t_Analizler.A_P3_Dgr )
                ) 
                / Tpl_MakSa * ttr_Amr_Baz / Tpl_MakSa,

            IIf(    Y_Rayic_Tip = "3. Bakım / Onarım", 
                    IIf( Y_L3_R_Kod = "1_MK-9000-9000", 1, ttr_Sa_Bakim),

            IIf(    Y_Rayic_Tip = "4. Personel", 
                    p_Saatlik_Mly,
            
            F_BF
        
        ))),
        4

    ) AS BF, 
        

    Round(
        
        IIf(

            Y_Rayic_Tip = "3. Bakım / Onarım",
            IIf( 
                Y_L3_R_Kod = "1_MK-9000-9000",
                Y_P1_Dgr,
                BM * BF
            ),

            BM * BF
        )
        ,4
    ) AS BT, 

    IIf( q_Yrd_Analizler.A_L3_R_Kod = "1_MK-9000-9000", "ENF.A", F_FF_Etki ) AS FF_Etki


FROM 
    (
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
                q_Tpl_MakSa_YA 
                ON 
                    q_Yrd_Analizler.A_L3_R_Kod = q_Tpl_MakSa_YA.A_L3_R_Kod
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
        ) 
        LEFT JOIN 
        t_Analizler 
        ON 
            (q_Yrd_Analizler.A_bV = t_Analizler.A_bV) 
            AND 
            (q_Yrd_Analizler.A_L4_Kod = t_Analizler.A_L3_R_Kod)

WHERE 
    q_Yrd_Analizler.a_bV = DLookup( "ver_B", "t_Kabuller" )

ORDER BY 

    t_Analizler.A_L4_Kod,
    q_Yrd_Analizler.A_L4_Kod, 
    q_Yrd_Analizler.A_Rayic_Tip, 
    q_Yrd_Analizler.A_L3_R_Kod;