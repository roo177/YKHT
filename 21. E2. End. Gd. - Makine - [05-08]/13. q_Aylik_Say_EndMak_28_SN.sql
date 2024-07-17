
-- q_Aylik_Say_EndMak_28_SN - 21.13


SELECT
    em_Ver,
    L3_R_Kod,
    CDATE("01.01.2028") AS Tarih,
    Sum( em_2801      ) AS say_EM
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
    CDATE("01.02.2028") AS Tarih,
    Sum( em_2802      ) AS say_EM
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
    CDATE("01.03.2028") AS Tarih,
    Sum( em_2803      ) AS say_EM
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
    CDATE("01.04.2028") AS Tarih,
    Sum( em_2804      ) AS say_EM
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
    CDATE("01.05.2028") AS Tarih,
    Sum( em_2805      ) AS say_EM
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
    CDATE("01.06.2028") AS Tarih,
    Sum( em_2806      ) AS say_EM
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
    CDATE("01.07.2028") AS Tarih,
    Sum( em_2807      ) AS say_EM
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
    CDATE("01.08.2028") AS Tarih,
    Sum( em_2808      ) AS say_EM
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
    CDATE("01.09.2028") AS Tarih,
    Sum( em_2809      ) AS say_EM
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
    CDATE("01.10.2028") AS Tarih,
    Sum( em_2810      ) AS say_EM
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
    CDATE("01.11.2028") AS Tarih,
    Sum( em_2811      ) AS say_EM
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
    CDATE("01.12.2028") AS Tarih,
    Sum( em_2812      ) AS say_EM
FROM 
    t_End_Makine
WHERE 
    em_Ver = DLookup( "ver_B", "t_Kabuller" )
GROUP BY 
    em_Ver,
    L3_R_Kod