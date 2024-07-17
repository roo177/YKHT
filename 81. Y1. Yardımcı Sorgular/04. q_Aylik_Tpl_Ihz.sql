
-- q_Aylik_Tpl_Ihz - 81.04


SELECT 

    "İhzarat" AS Tip, 

    Sum( tTd_2310 ) AS tT_2310, 
    Sum( tTd_2311 ) AS tT_2311, 
    Sum( tTd_2312 ) AS tT_2312, 

    Sum( tTd_2401 ) AS tT_2401, 
    Sum( tTd_2402 ) AS tT_2402, 
    Sum( tTd_2403 ) AS tT_2403, 
    Sum( tTd_2404 ) AS tT_2404, 
    Sum( tTd_2405 ) AS tT_2405, 
    Sum( tTd_2406 ) AS tT_2406, 
    Sum( tTd_2407 ) AS tT_2407, 
    Sum( tTd_2408 ) AS tT_2408, 
    Sum( tTd_2409 ) AS tT_2409, 
    Sum( tTd_2410 ) AS tT_2410, 
    Sum( tTd_2411 ) AS tT_2411, 
    Sum( tTd_2412 ) AS tT_2412, 

    Sum( tTd_2501 ) AS tT_2501, 
    Sum( tTd_2502 ) AS tT_2502, 
    Sum( tTd_2503 ) AS tT_2503, 
    Sum( tTd_2504 ) AS tT_2504, 
    Sum( tTd_2505 ) AS tT_2505, 
    Sum( tTd_2506 ) AS tT_2506, 
    Sum( tTd_2507 ) AS tT_2507, 
    Sum( tTd_2508 ) AS tT_2508, 
    Sum( tTd_2509 ) AS tT_2509, 
    Sum( tTd_2510 ) AS tT_2510, 
    Sum( tTd_2511 ) AS tT_2511, 
    Sum( tTd_2512 ) AS tT_2512, 

    Sum( tTd_2601 ) AS tT_2601, 
    Sum( tTd_2602 ) AS tT_2602, 
    Sum( tTd_2603 ) AS tT_2603, 
    Sum( tTd_2604 ) AS tT_2604, 
    Sum( tTd_2605 ) AS tT_2605, 
    Sum( tTd_2606 ) AS tT_2606, 
    Sum( tTd_2607 ) AS tT_2607, 
    Sum( tTd_2608 ) AS tT_2608, 
    Sum( tTd_2609 ) AS tT_2609, 
    Sum( tTd_2610 ) AS tT_2610, 
    Sum( tTd_2611 ) AS tT_2611, 
    Sum( tTd_2612 ) AS tT_2612

FROM q_Aylik_Det_Ihz;
