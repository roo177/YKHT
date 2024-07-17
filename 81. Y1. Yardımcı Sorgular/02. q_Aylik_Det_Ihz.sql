
-- q_Aylik_Det_Ihz - 81.02


SELECT 

    L4_Kod, 
    t_Aylik_Mkt_Ihz.AYGM_Poz, 
    AYGM_Sira, 
    
    0 AS tTd_2301, 
    0 AS tTd_2302, 
    0 AS tTd_2303, 
    0 AS tTd_2304, 
    0 AS tTd_2305, 
    0 AS tTd_2306, 
    0 AS tTd_2307, 
    0 AS tTd_2308, 
    0 AS tTd_2309, 
    
    Sum( M_2310 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2310, 
    Sum( M_2311 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2311, 
    Sum( M_2312 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2312, 

    Sum( M_2401 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2401, 
    Sum( M_2402 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2402, 
    Sum( M_2403 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2403, 
    Sum( M_2404 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2404, 
    Sum( M_2405 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2405, 
    Sum( M_2406 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2406, 
    Sum( M_2407 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2407, 
    Sum( M_2408 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2408, 
    Sum( M_2409 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2409, 
    Sum( M_2410 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2410, 
    Sum( M_2411 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2411, 
    Sum( M_2412 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2412, 

    Sum( M_2501 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2501, 
    Sum( M_2502 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2502, 
    Sum( M_2503 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2503, 
    Sum( M_2504 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2504, 
    Sum( M_2505 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2505, 
    Sum( M_2506 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2506, 
    Sum( M_2507 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2507, 
    Sum( M_2508 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2508, 
    Sum( M_2509 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2509, 
    Sum( M_2510 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2510, 
    Sum( M_2511 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2511, 
    Sum( M_2512 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2512, 

    Sum( M_2601 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2601, 
    Sum( M_2602 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2602, 
    Sum( M_2603 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2603, 
    Sum( M_2604 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2604, 
    Sum( M_2605 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2605, 
    Sum( M_2606 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2606, 
    Sum( M_2607 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2607, 
    Sum( M_2608 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2608, 
    Sum( M_2609 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2609, 
    Sum( M_2610 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2610, 
    Sum( M_2611 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2611, 
    Sum( M_2612 * L4_BF_DG * IIf( Tip = "Sipariş", Siparis, IIf( Tip = "Sevk", Sevk, Teslim))) AS tTd_2612, 
    
    0 AS ihz_M_2301, 
    0 AS ihz_M_2302, 
    0 AS ihz_M_2303, 
    0 AS ihz_M_2304, 
    0 AS ihz_M_2305, 
    0 AS ihz_M_2306, 
    0 AS ihz_M_2307, 
    0 AS ihz_M_2308,
    0 AS ihz_M_2309, 
    
    Sum( M_2310 ) AS ihz_M_2310, 
    Sum( M_2311 ) AS ihz_M_2311, 
    Sum( M_2312 ) AS ihz_M_2312,

    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,
    Sum( M_2412 ) AS ihz_M_2412,

    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,
    Sum( M_2512 ) AS ihz_M_2412,

    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412,
    Sum( M_2612 ) AS ihz_M_2412
    
FROM 
    (
        k_Pozlar_L4 
        RIGHT JOIN t_Aylik_Mkt_Ihz 
        ON k_Pozlar_L4.AYGM_Poz = t_Aylik_Mkt_Ihz.AYGM_Poz
    ) 
    LEFT JOIN t_Ihzarat 
    ON t_Aylik_Mkt_Ihz.AYGM_Poz = t_Ihzarat.AYGM_Poz

GROUP BY 
    L4_Kod, 
    t_Aylik_Mkt_Ihz.AYGM_Poz, 
    AYGM_Sira

ORDER BY
    k_Pozlar_L4.AYGM_Sira;