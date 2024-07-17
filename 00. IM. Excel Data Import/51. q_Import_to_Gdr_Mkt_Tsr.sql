
-- q_Import_to_Gdr_Mkt_Tsr - 00.51


INSERT INTO 
    
    t_Aylik_Mkt_Gider 
        ( 
            ver_B,
            L4_Kod, 
            M_TSR, 
            
            M_2310, 
            M_2311, 
            M_2312, 
            
            M_2401, 
            M_2402, 
            M_2403, 
            M_2404, 
            M_2405, 
            M_2406, 
            M_2407, 
            M_2408, 
            M_2409, 
            M_2410, 
            M_2411, 
            M_2412, 

            M_2501, 
            M_2502, 
            M_2503, 
            M_2504, 
            M_2505, 
            M_2506, 
            M_2507, 
            M_2508, 
            M_2509, 
            M_2510, 
            M_2511, 
            M_2512, 

            M_2601, 
            M_2602, 
            M_2603, 
            M_2604, 
            M_2605, 
            M_2606, 
            M_2607, 
            M_2608, 
            M_2609, 
            M_2610, 
            M_2611, 
            M_2612
        )

SELECT 
    
    ver_B                             AS imp_Ver,
    t_XLS_Kod_L4_Kod.L4_Kod           AS imp_Kod, 
    True                              AS imp_Bln,
    
    IIf( IsNull( M_2310 ), 0, M_2310) AS imp_2310, 
    IIf( IsNull( M_2311 ), 0, M_2311) AS imp_2311, 
    IIf( IsNull( M_2312 ), 0, M_2312) AS imp_2312, 
    
    IIf( IsNull( M_2401 ), 0, M_2401) AS imp_2401,
    IIf( IsNull( M_2402 ), 0, M_2402) AS imp_2402,
    IIf( IsNull( M_2403 ), 0, M_2403) AS imp_2403,
    IIf( IsNull( M_2404 ), 0, M_2404) AS imp_2404,
    IIf( IsNull( M_2405 ), 0, M_2405) AS imp_2405,
    IIf( IsNull( M_2406 ), 0, M_2406) AS imp_2406,
    IIf( IsNull( M_2407 ), 0, M_2407) AS imp_2407,
    IIf( IsNull( M_2408 ), 0, M_2408) AS imp_2408,
    IIf( IsNull( M_2409 ), 0, M_2409) AS imp_2409,
    IIf( IsNull( M_2410 ), 0, M_2410) AS imp_2410,
    IIf( IsNull( M_2411 ), 0, M_2411) AS imp_2411,
    IIf( IsNull( M_2412 ), 0, M_2412) AS imp_2412,

    IIf( IsNull( M_2501 ), 0, M_2501) AS imp_2501,
    IIf( IsNull( M_2502 ), 0, M_2502) AS imp_2502,
    IIf( IsNull( M_2503 ), 0, M_2503) AS imp_2503,
    IIf( IsNull( M_2504 ), 0, M_2504) AS imp_2504,
    IIf( IsNull( M_2505 ), 0, M_2505) AS imp_2505,
    IIf( IsNull( M_2506 ), 0, M_2506) AS imp_2506,
    IIf( IsNull( M_2507 ), 0, M_2507) AS imp_2507,
    IIf( IsNull( M_2508 ), 0, M_2508) AS imp_2508,
    IIf( IsNull( M_2509 ), 0, M_2509) AS imp_2509,
    IIf( IsNull( M_2510 ), 0, M_2510) AS imp_2510,
    IIf( IsNull( M_2511 ), 0, M_2511) AS imp_2511,
    IIf( IsNull( M_2512 ), 0, M_2512) AS imp_2512,

    IIf( IsNull( M_2601 ), 0, M_2601) AS imp_2601,
    IIf( IsNull( M_2602 ), 0, M_2602) AS imp_2602,
    IIf( IsNull( M_2603 ), 0, M_2603) AS imp_2603,
    IIf( IsNull( M_2604 ), 0, M_2604) AS imp_2604,
    IIf( IsNull( M_2605 ), 0, M_2605) AS imp_2605,
    IIf( IsNull( M_2606 ), 0, M_2606) AS imp_2606,
    IIf( IsNull( M_2607 ), 0, M_2607) AS imp_2607,
    IIf( IsNull( M_2608 ), 0, M_2608) AS imp_2608,
    IIf( IsNull( M_2609 ), 0, M_2609) AS imp_2609,
    IIf( IsNull( M_2610 ), 0, M_2610) AS imp_2610,
    IIf( IsNull( M_2611 ), 0, M_2611) AS imp_2611,
    IIf( IsNull( M_2612 ), 0, M_2612) AS imp_2612

FROM 

    t_XLS_Gider_Mkt_Taseron 
    LEFT JOIN 
    t_XLS_Kod_L4_Kod 
    ON t_XLS_Gider_Mkt_Taseron.xls_Kod = t_XLS_Kod_L4_Kod.Kod_Excel;