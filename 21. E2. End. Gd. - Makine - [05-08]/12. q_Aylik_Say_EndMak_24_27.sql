
-- q_Aylik_Say_EndMak_24_27 - 21.12


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.01.2024") AS Tarih,
    Sum( em_2401      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod
    

UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.02.2024") AS Tarih,
    Sum( em_2402      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.03.2024") AS Tarih,
    Sum( em_2403      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.04.2024") AS Tarih,
    Sum( em_2404 ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.05.2024") AS Tarih,
    Sum( em_2405      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.06.2024") AS Tarih,
    Sum( em_2406      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.07.2024") AS Tarih,
    Sum( em_2407      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod

UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.08.2024") AS Tarih,
    Sum( em_2408      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.09.2024") AS Tarih,
    Sum( em_2409      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.10.2024") AS Tarih,
    Sum( em_2410      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.11.2024") AS Tarih,
    Sum( em_2411      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.12.2024") AS Tarih,
    Sum( em_2412      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.01.2025") AS Tarih,
    Sum( em_2501      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.02.2025") AS Tarih,
    Sum( em_2502      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.03.2025") AS Tarih,
    Sum( em_2503      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.04.2025") AS Tarih,
    Sum( em_2504      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.05.2025") AS Tarih,
    Sum( em_2505      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.06.2025") AS Tarih,
    Sum( em_2506      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.07.2025") AS Tarih,
    Sum( em_2507      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.08.2025") AS Tarih,
    Sum( em_2508      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.09.2025") AS Tarih,
    Sum( em_2509      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.10.2025") AS Tarih,
    Sum( em_2510      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.11.2025") AS Tarih,
    Sum( em_2511      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.12.2025") AS Tarih,
    Sum( em_2512      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.01.2026") AS Tarih,
    Sum( em_2601      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.02.2026") AS Tarih,
    Sum( em_2602      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.03.2026") AS Tarih,
    Sum( em_2603      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.04.2026") AS Tarih,
    Sum( em_2604      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.05.2026") AS Tarih,
    Sum( em_2605      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.06.2026") AS Tarih,
    Sum( em_2606      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.07.2026") AS Tarih,
    Sum( em_2607      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.08.2026") AS Tarih,
    Sum( em_2608      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.09.2026") AS Tarih,
    Sum( em_2609      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.10.2026") AS Tarih,
    Sum( em_2610      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.11.2026") AS Tarih,
    Sum( em_2611      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.12.2026") AS Tarih,
    Sum( em_2612      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.01.2027") AS Tarih,
    Sum( em_2701      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.02.2027") AS Tarih,
    Sum( em_2702      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.03.2027") AS Tarih,
    Sum( em_2703      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.04.2027") AS Tarih,
    Sum( em_2704      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod

UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.05.2027") AS Tarih,
    Sum( em_2705      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.06.2027") AS Tarih,
    Sum( em_2706      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.07.2027") AS Tarih,
    Sum( em_2707      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.08.2027") AS Tarih,
    Sum( em_2708      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.09.2027") AS Tarih,
    Sum( em_2709      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.10.2027") AS Tarih,
    Sum( em_2710      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.11.2027") AS Tarih,
    Sum( em_2711      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod


UNION


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.12.2027") AS Tarih,
    Sum( em_2712      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod