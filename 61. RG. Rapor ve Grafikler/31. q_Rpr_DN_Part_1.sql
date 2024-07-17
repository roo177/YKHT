
-- q_Rpr_DN_Part_1 - 51.31


INSERT INTO

    t_Rpr_DogusNakit 
    ( 
        dgs_Kod, 
        dgs_Ay, 
        dgs_Ttr 
    )

SELECT 

    IIf( 
        A_Rayic_Tip = "6. Taşeron",
        "EX.02",

        IIf(
            A_Rayic_Tip = "2. Yakıt",
            "EX.05",

            IIf(
                A_Rayic_Tip = "3. Bakım / Onarım",
                "EX.14",

                IIf(
                    A_Rayic_Tip = "4. Personel",
                    "EX.01",

                    IIf(
                        A_Rayic_Tip = "5. Malzeme",
                        "EX.04",

                        IIf(
                            A_Rayic_Tip = "5. Malzeme",
                            "EX.04",
                            "EX.30"
                        )
                    )
                )
            )
        )
    )
    AS dgs_Kod,

    Tarih AS dgs_Ay,

    Sum( - BT_E * Miktar ) AS dgs_Ttr

FROM 
    (
        a_t_Aylik_Mkt_Gider_Flat 
        LEFT JOIN 
        q_Aylik_BFlar_Alt 
        ON 
            (a_t_Aylik_Mkt_Gider_Flat.L4_Kod = q_Aylik_BFlar_Alt.A_L4_Kod) 
            AND 
            (a_t_Aylik_Mkt_Gider_Flat.Tarih = q_Aylik_BFlar_Alt.g_Ay)
    ) 
    LEFT JOIN 
    k_Pozlar_L4 
    ON 
        a_t_Aylik_Mkt_Gider_Flat.L4_Kod = k_Pozlar_L4.L4_Kod

WHERE 

    ( k_Pozlar_L4.mtc_Dgs_NKt = "KNSLD" ) 
    AND
    Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

GROUP BY

    Tarih,

    IIf( 
        A_Rayic_Tip = "6. Taşeron",
        "EX.02",

        IIf(
            A_Rayic_Tip = "2. Yakıt",
            "EX.05",

            IIf(
                A_Rayic_Tip = "3. Bakım / Onarım",
                "EX.14",

                IIf(
                    A_Rayic_Tip = "4. Personel",
                    "EX.01",

                    IIf(
                        A_Rayic_Tip = "5. Malzeme",
                        "EX.04",

                        IIf(
                            A_Rayic_Tip = "5. Malzeme",
                            "EX.04",
                            "EX.30"
                        )
                    )
                )
            )
        )
    )