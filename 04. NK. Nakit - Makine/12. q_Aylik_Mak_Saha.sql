
-- q_Aylik_Mak_Fatura - 04.12


SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2024") AS mkp_Tarih,
    Sum( mak_GRCK )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_GRCK <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2024") AS mkp_Tarih,
    Sum( mak_2405 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2405 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2024") AS mkp_Tarih,
    Sum( mak_2406 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2406 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2024") AS mkp_Tarih,
    Sum( mak_2407 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2407 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2024") AS mkp_Tarih,
    Sum( mak_2408 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2408 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2024") AS mkp_Tarih,
    Sum( mak_2409 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2409 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2024") AS mkp_Tarih,
    Sum( mak_2410 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2410 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2024") AS mkp_Tarih,
    Sum( mak_2411 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2411 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2024") AS mkp_Tarih,
    Sum( mak_2412 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2412 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2025") AS mkp_Tarih,
    Sum( mak_2501 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2501 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.02.2025") AS mkp_Tarih,
    Sum( mak_2502 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2502 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.03.2025") AS mkp_Tarih,
    Sum( mak_2503 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2503 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.04.2025") AS mkp_Tarih,
    Sum( mak_2504 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2504 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2025") AS mkp_Tarih,
    Sum( mak_2505 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2505 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2025") AS mkp_Tarih,
    Sum( mak_2506 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2506 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2025") AS mkp_Tarih,
    Sum( mak_2507 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2507 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2025") AS mkp_Tarih,
    Sum( mak_2508 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2508 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2025") AS mkp_Tarih,
    Sum( mak_2509 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2509 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2025") AS mkp_Tarih,
    Sum( mak_2510 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2510 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2025") AS mkp_Tarih,
    Sum( mak_2511 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2511 <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2025") AS mkp_Tarih,
    Sum( mak_2512 )     AS mkp_Miktar
FROM 
    t_Kabuller,
    t_Mak_Saha_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Saha_Cross.ver_B
    AND
    mak_2512 <> 0
GROUP BY
    mak_No,
    mak_Kod
