
-- q_ttr_Tpl_Mak_Sgr - 23.36


SELECT 

    "E-8.SGR-02.KSK-001" AS L4_Kod,

    Sum( 
        IIf( 
            B_Kur = "EUR",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    )
    AS mak_EUR,
    
    Sum( 
        IIf( 
            B_Kur = "TRY",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    ) 
    AS mak_TRY

FROM

    t_Makine 
    LEFT JOIN 
    q_Aylik_Mak_Saha ON t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod

WHERE
    t_Makine.b_S_Plaka = "1. Plakalı"

GROUP BY
    "E-8.SGR-02.KSK-001"


UNION


SELECT 

    "E-8.SGR-03.ANA-001" AS L4_Kod,

    Sum( 
        IIf( 
            B_Kur = "EUR",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    )
    AS mak_EUR,
    
    Sum( 
        IIf( 
            B_Kur = "TRY",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    ) 
    AS mak_TRY

FROM

    t_Makine 
    LEFT JOIN 
    q_Aylik_Mak_Saha ON t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod

WHERE
    t_Makine.b_S_Plaka = "2. Plakasız" 

GROUP BY
    "E-8.SGR-03.ANA-001"


UNION


SELECT 

    "E-8.SGR-04.NKL-001" AS L4_Kod,

    Sum( 
        IIf( 
            B_Kur = "EUR",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    )
    AS mak_EUR,
    
    Sum( 
        IIf( 
            B_Kur = "TRY",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    ) 
    AS mak_TRY

FROM

    t_Makine 
    LEFT JOIN 
    q_Aylik_Mak_Saha ON t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod

WHERE 
    t_Makine.b_S_Plaka <> "-"

GROUP BY
    "E-8.SGR-04.NKL-001"


UNION


SELECT 

    "E-8.SGR-05.PRS-001" AS L4_Kod,

    Sum( 
        IIf( 
            B_Kur = "EUR",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    )
    AS mak_EUR,
    
    Sum( 
        IIf( 
            B_Kur = "TRY",
            Round( mkp_Miktar * Baz_Fiyat *  IIf( b_Gmr, 1.01, 1 ), 2 ),
            0
        )
    ) 
    AS mak_TRY

FROM

    t_Makine 
    LEFT JOIN 
    q_Aylik_Mak_Saha ON t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod

WHERE 
    t_Makine.b_S_Plaka <> "-"

GROUP BY
    "E-8.SGR-05.PRS-001"