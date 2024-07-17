
-- q_Aylik_Mkt_Gider - 14.02


SELECT
    L4_Kod,
    CDATE("01.10.2023") AS Tarih,
    M_2310 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2310 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.11.2023") AS Tarih,
    M_2311 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2311 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.12.2023") AS Tarih,
    M_2312 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2312 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.01.2024") AS Tarih,
    M_2401 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2401 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.02.2024") AS Tarih,
    M_2402 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2402 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.03.2024") AS Tarih,
    M_2403 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2403 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.04.2024") AS Tarih,
    M_2404 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2404 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.05.2024") AS Tarih,
    M_2405 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2405 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.06.2024") AS Tarih,
    M_2406 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2406 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.07.2024") AS Tarih,
    M_2407 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2407 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.08.2024") AS Tarih,
    M_2408 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2408 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.09.2024") AS Tarih,
    M_2409 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2409 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.10.2024") AS Tarih,
    M_2410 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2410 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.11.2024") AS Tarih,
    M_2411 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2411 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.12.2024") AS Tarih,
    M_2412 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2412 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.01.2025") AS Tarih,
    M_2501 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2501 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.02.2025") AS Tarih,
    M_2502 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2502 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.03.2025") AS Tarih,
    M_2503 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2503 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.04.2025") AS Tarih,
    M_2504 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2504 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.05.2025") AS Tarih,
    M_2505 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2505 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.06.2025") AS Tarih,
    M_2506 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2506 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.07.2025") AS Tarih,
    M_2507 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2507 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.08.2025") AS Tarih,
    M_2508 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2508 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.09.2025") AS Tarih,
    M_2509 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2509 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.10.2025") AS Tarih,
    M_2510 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2510 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.11.2025") AS Tarih,
    M_2511 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2511 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.12.2025") AS Tarih,
    M_2512 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2512 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.01.2026") AS Tarih,
    M_2601 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2601 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.02.2026") AS Tarih,
    M_2602 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2602 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.03.2026") AS Tarih,
    M_2603 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2603 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.04.2026") AS Tarih,
    M_2604 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2604 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.05.2026") AS Tarih,
    M_2605 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2605 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.06.2026") AS Tarih,
    M_2606 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2606 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.07.2026") AS Tarih,
    M_2607 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2607 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.08.2026") AS Tarih,
    M_2608 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2608 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.09.2026") AS Tarih,
    M_2609 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2609 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.10.2026") AS Tarih,
    M_2610 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2610 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.11.2026") AS Tarih,
    M_2611 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2611 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B

UNION

SELECT
    L4_Kod,
    CDATE("01.12.2026") AS Tarih,
    M_2612 AS Miktar
FROM 
    t_Kabuller,
    t_Aylik_Mkt_Gider
WHERE 
    M_2612 <> 0 AND t_Kabuller.ver_B = t_Aylik_Mkt_Gider.ver_B