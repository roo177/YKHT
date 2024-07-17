
-- q_Aylik_Tpl_Imalat - 81.03


SELECT 
    
    "İmalat Toplam" AS tpl_Imalat, 
    
    Sum( M_2310 * L4_BF_DG ) AS tT_2310, 
    Sum( M_2311 * L4_BF_DG ) AS tT_2311, 
    Sum( M_2312 * L4_BF_DG ) AS tT_2312,

    Sum( M_2401 * L4_BF_DG ) AS tT_2401,
    Sum( M_2402 * L4_BF_DG ) AS tT_2402,
    Sum( M_2403 * L4_BF_DG ) AS tT_2403,
    Sum( M_2404 * L4_BF_DG ) AS tT_2404,
    Sum( M_2405 * L4_BF_DG ) AS tT_2405,
    Sum( M_2406 * L4_BF_DG ) AS tT_2406,
    Sum( M_2407 * L4_BF_DG ) AS tT_2407,
    Sum( M_2408 * L4_BF_DG ) AS tT_2408,
    Sum( M_2409 * L4_BF_DG ) AS tT_2409,
    Sum( M_2410 * L4_BF_DG ) AS tT_2410,
    Sum( M_2411 * L4_BF_DG ) AS tT_2411,
    Sum( M_2412 * L4_BF_DG ) AS tT_2412,

    Sum( M_2501 * L4_BF_DG ) AS tT_2501,
    Sum( M_2502 * L4_BF_DG ) AS tT_2502,
    Sum( M_2503 * L4_BF_DG ) AS tT_2503,
    Sum( M_2504 * L4_BF_DG ) AS tT_2504,
    Sum( M_2505 * L4_BF_DG ) AS tT_2505,
    Sum( M_2506 * L4_BF_DG ) AS tT_2506,
    Sum( M_2507 * L4_BF_DG ) AS tT_2507,
    Sum( M_2508 * L4_BF_DG ) AS tT_2508,
    Sum( M_2509 * L4_BF_DG ) AS tT_2509,
    Sum( M_2510 * L4_BF_DG ) AS tT_2510,
    Sum( M_2511 * L4_BF_DG ) AS tT_2511,
    Sum( M_2512 * L4_BF_DG ) AS tT_2512,

    Sum( M_2601 * L4_BF_DG ) AS tT_2601,
    Sum( M_2602 * L4_BF_DG ) AS tT_2602,
    Sum( M_2603 * L4_BF_DG ) AS tT_2603,
    Sum( M_2604 * L4_BF_DG ) AS tT_2604,
    Sum( M_2605 * L4_BF_DG ) AS tT_2605,
    Sum( M_2606 * L4_BF_DG ) AS tT_2606,
    Sum( M_2607 * L4_BF_DG ) AS tT_2607,
    Sum( M_2608 * L4_BF_DG ) AS tT_2608,
    Sum( M_2609 * L4_BF_DG ) AS tT_2609,
    Sum( M_2610 * L4_BF_DG ) AS tT_2610,
    Sum( M_2611 * L4_BF_DG ) AS tT_2611,
    Sum( M_2612 * L4_BF_DG ) AS tT_2612

FROM 
    k_Pozlar_L4 
    RIGHT JOIN 
    t_Aylik_Mkt_Gelir 
    ON k_Pozlar_L4.AYGM_Poz = t_Aylik_Mkt_Gelir.AYGM_Poz

GROUP BY 
    "İmalat Toplam";