
-- q_Direkt_Flat_Alt.sql - 14.61


SELECT 

    IIf( 
        flt_Ryc_Tip = "3. Bakım / Onarım",
        Replace( Replace( k_Rayicler_L3.L3_R_PozL4, "MLS", "MBO" ), "MNK", "MBO" ),
        k_Rayicler_L3.L3_R_PozL4
    )
        AS fay_Kod,
    
    q_Aylik_Mkt_Gider.Tarih AS fay_Tarih, 


    q_Aylik_Mkt_Gider.Miktar *
    flt_P1 * flt_P2 * flt_P3

        AS fay_Miktar, 


    fay_Miktar *

    IIf( 

        flt_Ryc_Tip = "3. Bakım / Onarım",

        IIf( 
            flt_Ryc_Kod = "1_MK-9000-9000", 
            1, 
            ttr_Sa_Bakim 
        ),

        IIf( 
            flt_Ryc_Tip = "4. Personel", 
            p_Saatlik_Mly,
            F_BF
        ) 
    )

        AS fay_Tutar,


    IIf(
        flt_Ryc_Tip = "3. Bakım / Onarım",
        "YKT.A",
        F_FF_Etki  
    ) 
        AS fay_Etki_Tip

FROM 
    (
        (
            (
                (
                    q_Analiz_Flat 
                    LEFT JOIN 
                    q_Aylik_Mkt_Gider 
                    ON 
                        q_Analiz_Flat.flt_Poz_Kod = q_Aylik_Mkt_Gider.L4_Kod
                ) 
                LEFT JOIN 
                t_R_Fiyatlar 
                ON 
                    (q_Analiz_Flat.flt_Ryc_Kod = t_R_Fiyatlar.F_Kod) 
                    AND 
                    (q_Analiz_Flat.flt_Ver = t_R_Fiyatlar.F_ver)
            ) 
            LEFT JOIN 
            q_Personel 
            ON 
                q_Analiz_Flat.flt_Ryc_Kod = q_Personel.p_Kod
        ) 
        LEFT JOIN 
        q_Makine 
        ON 
            q_Analiz_Flat.flt_Ryc_Kod = q_Makine.L3_R_Kod
    )
    LEFT JOIN
    k_Rayicler_L3
    ON 
        q_Analiz_Flat.flt_Ryc_Kod = k_Rayicler_L3.L3_R_Kod

WHERE

    flt_Ryc_Tip <> "1. Amortisman"
    AND
    q_Aylik_Mkt_Gider.Miktar Is Not Null


ORDER BY

    k_Rayicler_L3.L3_R_PozL4,
    q_Aylik_Mkt_Gider.Tarih