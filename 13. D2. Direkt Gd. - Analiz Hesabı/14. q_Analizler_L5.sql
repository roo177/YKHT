
-- q_Analizler_L5 - 13.15


SELECT 
    
    q_Analizler.A_Rayic_Tip, 
    q_Analizler.A_L4_Kod, 
    q_Analizler.A_L3_R_Kod, 
    

        Round(  
            IIf(    
                A_Rayic_Tip = "1. Amortisman",         
                A_P1_Dgr * A_P2_Dgr / A_P3_Dgr,
                A_P1_Dgr * A_P2_Dgr * A_P3_Dgr
            ), 
            6
        )  
    AS BM,


        Round(
        
            IIf( 
                A_Rayic_Tip = "1. Amortisman",

                ttr_Amr_Baz / tpl_MakineSaat,

                IIf( 
                    A_Rayic_Tip = "3. Bakım / Onarım",

                    IIf( 
                        q_Analizler.A_L3_R_Kod = "1_MK-9000-9000", 
                        1, 
                        ttr_Sa_Bakim 
                    ),

                    IIf( 
                        A_Rayic_Tip = "4. Personel", 
                        p_Saatlik_Mly,
                        0
                    ) 
                ) 
            )
            +  
            IIf( 
                A_Rayic_Tip In ("2. Yakıt", "5. Malzeme", "6. Taşeron" ), 
                F_BF,
                IIf( A_Rayic_Tip = "7. Yardımcı Analiz", Birim_Fiyat, 0 )
            ) 
            
            ,6
        )

    AS BF,


    Round( BM * BF, 6 )  AS BT,


        IIf( 
            A_Rayic_Tip = "1. Amortisman",
            "Sabit",
        IIf(
            A_Rayic_Tip = "3. Bakım / Onarım",
            "YKT.A",
        IIf(
            A_Rayic_Tip = "7. Yardımcı Analiz",
            "ENF.A",

            F_FF_Etki  

        ) ) ) 
    
    AS FF_Etki


FROM 
    (
        (
            (
                (
                    q_Analizler 
                    LEFT JOIN 
                    q_Makine 
                        ON q_Analizler.A_L3_R_Kod = q_Makine.L3_R_Kod
                    ) 
                    LEFT JOIN 
                    q_KNS_Tpl_MakSa 
                    ON 
                        q_Analizler.A_L3_R_Kod = q_KNS_Tpl_MakSa.kod_MakineSaat
            ) 
            LEFT JOIN 
            q_Personel 
            ON 
                q_Analizler.A_L3_R_Kod = q_Personel.p_Kod
        ) 
        LEFT JOIN t_R_Fiyatlar 
            ON 
                (q_Analizler.A_L3_R_Kod = t_R_Fiyatlar.F_Kod) 
                AND 
                (q_Analizler.A_bV = t_R_Fiyatlar.F_ver)
    ) 
    LEFT JOIN 
    q_Y_Analizler_L1 
    ON 
        q_Analizler.A_L3_R_Kod = q_Y_Analizler_L1.A_L4_Kod

WHERE 

    a_bV =  DLookup( "ver_B", "t_Kabuller" )

ORDER BY 

    q_Analizler.A_L4_Kod,
    A_Rayic_Tip, 
    q_Analizler.A_L3_R_Kod