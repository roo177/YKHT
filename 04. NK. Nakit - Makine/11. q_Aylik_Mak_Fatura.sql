
-- q_Aylik_Mak_Fatura - 04.11


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.01.2024")         AS mkp_Tarih,
    Sum( mak_GRCK )             AS mkp_Miktar,
    Sum( mak_GRCK * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_GRCK * Baz_Fiyat <> 0

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.05.2024")         AS mkp_Tarih,
    Sum( mak_2405 )             AS mkp_Miktar,
    Sum( mak_2405 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2405 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.06.2024")         AS mkp_Tarih,
    Sum( mak_2406 )             AS mkp_Miktar,
    Sum( mak_2406 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2406 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.07.2024")         AS mkp_Tarih,
    Sum( mak_2407 )             AS mkp_Miktar,
    Sum( mak_2407 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2407 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.08.2024")         AS mkp_Tarih,
    Sum( mak_2408 )             AS mkp_Miktar,
    Sum( mak_2408 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2408 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.09.2024")         AS mkp_Tarih,
    Sum( mak_2409 )             AS mkp_Miktar,
    Sum( mak_2409 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2409 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.10.2024")         AS mkp_Tarih,
    Sum( mak_2410 )             AS mkp_Miktar,
    Sum( mak_2410 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2410 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.11.2024")         AS mkp_Tarih,
    Sum( mak_2411 )             AS mkp_Miktar,
    Sum( mak_2411 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2411 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.12.2024")         AS mkp_Tarih,
    Sum( mak_2412 )             AS mkp_Miktar,
    Sum( mak_2412 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2412 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.01.2025")         AS mkp_Tarih,
    Sum( mak_2501 )             AS mkp_Miktar,
    Sum( mak_2501 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2501 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.02.2025")         AS mkp_Tarih,
    Sum( mak_2502 )             AS mkp_Miktar,
    Sum( mak_2502 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2502 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.03.2025")         AS mkp_Tarih,
    Sum( mak_2503 )             AS mkp_Miktar,
    Sum( mak_2503 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2503 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.04.2025")         AS mkp_Tarih,
    Sum( mak_2504 )             AS mkp_Miktar,
    Sum( mak_2504 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2504 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.05.2025")         AS mkp_Tarih,
    Sum( mak_2505 )             AS mkp_Miktar,
    Sum( mak_2505 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2505 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.06.2025")         AS mkp_Tarih,
    Sum( mak_2506 )             AS mkp_Miktar,
    Sum( mak_2506 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2506 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.07.2025")         AS mkp_Tarih,
    Sum( mak_2507 )             AS mkp_Miktar,
    Sum( mak_2507 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2507 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.08.2025")         AS mkp_Tarih,
    Sum( mak_2508 )             AS mkp_Miktar,
    Sum( mak_2508 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2508 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.09.2025")         AS mkp_Tarih,
    Sum( mak_2509 )             AS mkp_Miktar,
    Sum( mak_2509 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2509 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.10.2025")         AS mkp_Tarih,
    Sum( mak_2510 )             AS mkp_Miktar,
    Sum( mak_2510 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2510 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
 

UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.11.2025")         AS mkp_Tarih,
    Sum( mak_2511 )             AS mkp_Miktar,
    Sum( mak_2511 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2511 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No


UNION ALL


SELECT
    
    mak_No,
    mak_Kod,
    CDATE("01.12.2025")         AS mkp_Tarih,
    Sum( mak_2512 )             AS mkp_Miktar,
    Sum( mak_2512 * Baz_Fiyat ) AS mkp_Tutar

FROM 
    t_Mak_Fatura_Cross
    LEFT JOIN 
    t_Makine 
    ON 
        t_Mak_Fatura_Cross.mak_Kod = t_Makine.L4_R_Kod 

WHERE 
    t_Mak_Fatura_Cross.ver_B = DLookup( "ver_B", "t_Kabuller" )
    AND
    mak_2512 * Baz_Fiyat <> 0 

GROUP BY
    mak_No,
    mak_Kod

ORDER BY
    mak_No
