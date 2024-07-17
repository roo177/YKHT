
-- q_Aylik_Det_Imalat - 81.01


SELECT 
    
    k_Pozlar_L4.L4_Kod, 
    t_Aylik_Mkt_Gelir.AYGM_Poz, 
    k_Pozlar_L4.AYGM_Sira, 
    
    0 AS tT_2301, 
    0 AS tT_2302, 
    0 AS tT_2303,
    0 AS tT_2304, 
    0 AS tT_2305, 
    0 AS tT_2306, 
    0 AS tT_2307, 
    0 AS tT_2308, 
    0 AS tT_2309, 
    M_2310 * L4_BF_DG AS tT_2310, 
    M_2311 * L4_BF_DG AS tT_2311, 
    M_2312 * L4_BF_DG AS tT_2312, 

    M_2401 * L4_BF_DG AS tT_2401, 
    M_2402 * L4_BF_DG AS tT_2402, 
    M_2403 * L4_BF_DG AS tT_2403, 
    M_2404 * L4_BF_DG AS tT_2404, 
    M_2405 * L4_BF_DG AS tT_2405, 
    M_2406 * L4_BF_DG AS tT_2406, 
    M_2407 * L4_BF_DG AS tT_2407, 
    M_2408 * L4_BF_DG AS tT_2408, 
    M_2409 * L4_BF_DG AS tT_2409, 
    M_2410 * L4_BF_DG AS tT_2410, 
    M_2411 * L4_BF_DG AS tT_2411,
    M_2412 * L4_BF_DG AS tT_2412,

    M_2501 * L4_BF_DG AS tT_2501, 
    M_2502 * L4_BF_DG AS tT_2502, 
    M_2503 * L4_BF_DG AS tT_2503, 
    M_2504 * L4_BF_DG AS tT_2504, 
    M_2505 * L4_BF_DG AS tT_2505, 
    M_2506 * L4_BF_DG AS tT_2506, 
    M_2507 * L4_BF_DG AS tT_2507, 
    M_2508 * L4_BF_DG AS tT_2508, 
    M_2509 * L4_BF_DG AS tT_2509, 
    M_2510 * L4_BF_DG AS tT_2510, 
    M_2511 * L4_BF_DG AS tT_2511,
    M_2512 * L4_BF_DG AS tT_2512, 

    M_2601 * L4_BF_DG AS tT_2601, 
    M_2602 * L4_BF_DG AS tT_2602, 
    M_2603 * L4_BF_DG AS tT_2603, 
    M_2604 * L4_BF_DG AS tT_2604, 
    M_2605 * L4_BF_DG AS tT_2605, 
    M_2606 * L4_BF_DG AS tT_2606, 
    M_2607 * L4_BF_DG AS tT_2607, 
    M_2608 * L4_BF_DG AS tT_2608, 
    M_2609 * L4_BF_DG AS tT_2609, 
    M_2610 * L4_BF_DG AS tT_2610, 
    M_2611 * L4_BF_DG AS tT_2611,
    M_2612 * L4_BF_DG AS tT_2612, 
    
    
    0 AS im_M_2301, 
    0 AS im_M_2302, 
    0 AS im_M_2303, 
    0 AS im_M_2304, 
    0 AS im_M_2305, 
    0 AS im_M_2306, 
    0 AS im_M_2307, 
    0 AS im_M_2308, 
    0 AS im_M_2309, 
    
    t_Aylik_Mkt_Gelir.M_2310 AS im_M_2310, 
    t_Aylik_Mkt_Gelir.M_2311 AS im_M_2311, 
    t_Aylik_Mkt_Gelir.M_2312 AS im_M_2312, 
    
    t_Aylik_Mkt_Gelir.M_2401 AS im_M_2401, 
    t_Aylik_Mkt_Gelir.M_2402 AS im_M_2402, 
    t_Aylik_Mkt_Gelir.M_2403 AS im_M_2403, 
    t_Aylik_Mkt_Gelir.M_2404 AS im_M_2404, 
    t_Aylik_Mkt_Gelir.M_2405 AS im_M_2405, 
    t_Aylik_Mkt_Gelir.M_2406 AS im_M_2406, 
    t_Aylik_Mkt_Gelir.M_2407 AS im_M_2407, 
    t_Aylik_Mkt_Gelir.M_2408 AS im_M_2408, 
    t_Aylik_Mkt_Gelir.M_2409 AS im_M_2409, 
    t_Aylik_Mkt_Gelir.M_2410 AS im_M_2410, 
    t_Aylik_Mkt_Gelir.M_2411 AS im_M_2411, 
    t_Aylik_Mkt_Gelir.M_2412 AS im_M_2412,

    t_Aylik_Mkt_Gelir.M_2501 AS im_M_2501, 
    t_Aylik_Mkt_Gelir.M_2502 AS im_M_2502, 
    t_Aylik_Mkt_Gelir.M_2503 AS im_M_2503, 
    t_Aylik_Mkt_Gelir.M_2504 AS im_M_2504, 
    t_Aylik_Mkt_Gelir.M_2505 AS im_M_2505, 
    t_Aylik_Mkt_Gelir.M_2506 AS im_M_2506, 
    t_Aylik_Mkt_Gelir.M_2507 AS im_M_2507, 
    t_Aylik_Mkt_Gelir.M_2508 AS im_M_2508, 
    t_Aylik_Mkt_Gelir.M_2509 AS im_M_2509, 
    t_Aylik_Mkt_Gelir.M_2510 AS im_M_2510, 
    t_Aylik_Mkt_Gelir.M_2511 AS im_M_2511, 
    t_Aylik_Mkt_Gelir.M_2512 AS im_M_2512, 

    t_Aylik_Mkt_Gelir.M_2601 AS im_M_2601, 
    t_Aylik_Mkt_Gelir.M_2602 AS im_M_2602, 
    t_Aylik_Mkt_Gelir.M_2603 AS im_M_2603, 
    t_Aylik_Mkt_Gelir.M_2604 AS im_M_2604, 
    t_Aylik_Mkt_Gelir.M_2605 AS im_M_2605, 
    t_Aylik_Mkt_Gelir.M_2606 AS im_M_2606, 
    t_Aylik_Mkt_Gelir.M_2607 AS im_M_2607, 
    t_Aylik_Mkt_Gelir.M_2608 AS im_M_2608, 
    t_Aylik_Mkt_Gelir.M_2609 AS im_M_2609, 
    t_Aylik_Mkt_Gelir.M_2610 AS im_M_2610, 
    t_Aylik_Mkt_Gelir.M_2611 AS im_M_2611, 
    t_Aylik_Mkt_Gelir.M_2612 AS im_M_2612

FROM 
    
    k_Pozlar_L4 
    RIGHT JOIN 
    t_Aylik_Mkt_Gelir 
    ON k_Pozlar_L4.AYGM_Poz = t_Aylik_Mkt_Gelir.AYGM_Poz;
