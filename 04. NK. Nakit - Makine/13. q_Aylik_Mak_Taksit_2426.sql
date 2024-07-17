
-- q_Aylik_Mak_Fatura_2426 - 04.12


SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2024") AS mkp_Tarih,
    Sum( mak_GRCK * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_GRCK * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2024") AS mkp_Tarih,
    Sum( mak_2405 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2405 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2024") AS mkp_Tarih,
    Sum( mak_2406 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2406 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2024") AS mkp_Tarih,
    Sum( mak_2407 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2407 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2024") AS mkp_Tarih,
    Sum( mak_2408 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2408 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2024") AS mkp_Tarih,
    Sum( mak_2409 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2409 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2024") AS mkp_Tarih,
    Sum( mak_2410 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2410 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2024") AS mkp_Tarih,
    Sum( mak_2411 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2411 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2024") AS mkp_Tarih,
    Sum( mak_2412 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2412 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod


UNION ALL


SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2025") AS mkp_Tarih,
    Sum( mak_2501 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2501 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.02.2025") AS mkp_Tarih,
    Sum( mak_2502 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2502 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.03.2025") AS mkp_Tarih,
    Sum( mak_2503 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2503 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.04.2025") AS mkp_Tarih,
    Sum( mak_2504 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2504 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2025") AS mkp_Tarih,
    Sum( mak_2505 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2505 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2025") AS mkp_Tarih,
    Sum( mak_2506 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2506 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2025") AS mkp_Tarih,
    Sum( mak_2507 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2507 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2025") AS mkp_Tarih,
    Sum( mak_2508 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2508 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2025") AS mkp_Tarih,
    Sum( mak_2509 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2509 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2025") AS mkp_Tarih,
    Sum( mak_2510 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2510 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2025") AS mkp_Tarih,
    Sum( mak_2511 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2511 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2025") AS mkp_Tarih,
    Sum( mak_2512 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2512 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod


UNION ALL


SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2026") AS mkp_Tarih,
    Sum( mak_2601 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2601 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.02.2026") AS mkp_Tarih,
    Sum( mak_2602 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2602 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.03.2026") AS mkp_Tarih,
    Sum( mak_2603 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2603 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.04.2026") AS mkp_Tarih,
    Sum( mak_2604 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2604 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2026") AS mkp_Tarih,
    Sum( mak_2605 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2605 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2026") AS mkp_Tarih,
    Sum( mak_2606 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2606 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2026") AS mkp_Tarih,
    Sum( mak_2607 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2607 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2026") AS mkp_Tarih,
    Sum( mak_2608 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2608 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2026") AS mkp_Tarih,
    Sum( mak_2609 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2609 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2026") AS mkp_Tarih,
    Sum( mak_2610 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2610 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2026") AS mkp_Tarih,
    Sum( mak_2611 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2611 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2026") AS mkp_Tarih,
    Sum( mak_2612 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2612 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod
