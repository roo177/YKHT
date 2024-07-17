
-- q_Aylik_Gelir_Rp - 31.71


SELECT

    "Konsolide" AS Konsolide,      
    "İmalat"    AS Tip,
    2023        AS Sene,

    0       AS m_01,
    0       AS m_02,
    0       AS m_03,
    0       AS m_04,
    0       AS m_05,
    0       AS m_06,
    0       AS m_07,
    0       AS m_08,
    0       AS m_09,
    tT_2310 AS m_10,
    tT_2311 AS m_11,
    tT_2312 AS m_12

FROM

    q_Aylik_Tpl_Imalat

UNION

SELECT

    "Konsolide" AS Konsolide, 
    "İhzarat"   AS Tip,
    2023        AS Sene,

    0       AS m_01,
    0       AS m_02,
    0       AS m_03,
    0       AS m_04,
    0       AS m_05,
    0       AS m_06,
    0       AS m_07,
    0       AS m_08,
    0       AS m_09,
    0       AS m_10,
    tT_2311 AS m_11,
    tT_2312 AS m_12

FROM

    q_Aylik_Tpl_Ihz

UNION

SELECT

    "Konsolide" AS Konsolide,      
    "İmalat"    AS Tip,
    2024        AS Sene,

    tT_2401 AS m_01,
    tT_2402 AS m_02,
    tT_2403 AS m_03,
    tT_2404 AS m_04,
    tT_2405 AS m_05,
    tT_2406 AS m_06,
    tT_2407 AS m_07,
    tT_2408 AS m_08,
    tT_2409 AS m_09,
    tT_2410 AS m_10,
    tT_2411 AS m_11,
    tT_2412 AS m_12

FROM

    q_Aylik_Tpl_Imalat

UNION

SELECT

    "Konsolide" AS Konsolide, 
    "İhzarat"   AS Tip,
    2024        AS Sene,

    tT_2401 AS m_01,
    tT_2402 AS m_02,
    tT_2403 AS m_03,
    tT_2404 AS m_04,
    tT_2405 AS m_05,
    tT_2406 AS m_06,
    tT_2407 AS m_07,
    tT_2408 AS m_08,
    tT_2409 AS m_09,
    tT_2410 AS m_10,
    tT_2411 AS m_11,
    tT_2412 AS m_12

FROM

    q_Aylik_Tpl_Ihz

UNION

SELECT

    "Konsolide" AS Konsolide,      
    "İmalat"    AS Tip,
    2025        AS Sene,

    tT_2501 AS m_01,
    tT_2502 AS m_02,
    tT_2503 AS m_03,
    tT_2504 AS m_04,
    tT_2505 AS m_05,
    tT_2506 AS m_06,
    tT_2507 AS m_07,
    tT_2508 AS m_08,
    tT_2509 AS m_09,
    tT_2510 AS m_10,
    tT_2511 AS m_11,
    tT_2512 AS m_12

FROM

    q_Aylik_Tpl_Imalat

UNION

SELECT

    "Konsolide" AS Konsolide, 
    "İhzarat"   AS Tip,
    2025        AS Sene,

    tT_2501 AS m_01,
    tT_2502 AS m_02,
    tT_2503 AS m_03,
    tT_2504 AS m_04,
    tT_2505 AS m_05,
    tT_2506 AS m_06,
    tT_2507 AS m_07,
    tT_2508 AS m_08,
    tT_2509 AS m_09,
    tT_2510 AS m_10,
    tT_2511 AS m_11,
    tT_2512 AS m_12

FROM

    q_Aylik_Tpl_Ihz

UNION

SELECT

    "Konsolide" AS Konsolide,      
    "İmalat"    AS Tip,
    2026        AS Sene,

    tT_2601 AS m_01,
    tT_2602 AS m_02,
    tT_2603 AS m_03,
    tT_2604 AS m_04,
    tT_2605 AS m_05,
    tT_2606 AS m_06,
    tT_2607 AS m_07,
    tT_2608 AS m_08,
    tT_2609 AS m_09,
    tT_2610 AS m_10,
    tT_2611 AS m_11,
    tT_2612 AS m_12

FROM

    q_Aylik_Tpl_Imalat

UNION

SELECT

    "Konsolide" AS Konsolide, 
    "İhzarat"   AS Tip,
    2026        AS Sene,

    tT_2601 AS m_01,
    tT_2602 AS m_02,
    tT_2603 AS m_03,
    tT_2604 AS m_04,
    tT_2605 AS m_05,
    tT_2606 AS m_06,
    tT_2607 AS m_07,
    tT_2608 AS m_08,
    tT_2609 AS m_09,
    tT_2610 AS m_10,
    tT_2611 AS m_11,
    tT_2612 AS m_12

FROM

    q_Aylik_Tpl_Ihz