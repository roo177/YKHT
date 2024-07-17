
-- q_Aylik_Yzd_Sigorta_28_SN - 23.13


SELECT
    L4_Kod,
    CDATE("01.01.2028") AS Tarih,
    sgr_yzd_2801 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2801 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.02.2028") AS Tarih,
    sgr_yzd_2802 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2802 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.03.2028") AS Tarih,
    sgr_yzd_2803 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2803 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.04.2028") AS Tarih,
    sgr_yzd_2804 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2804 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.05.2028") AS Tarih,
    sgr_yzd_2805 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2805 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.06.2028") AS Tarih,
    sgr_yzd_2806 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2806 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.07.2028") AS Tarih,
    sgr_yzd_2807 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2807 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.08.2028") AS Tarih,
    sgr_yzd_2808 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2808 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.09.2028") AS Tarih,
    sgr_yzd_2809 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2809 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.10.2028") AS Tarih,
    sgr_yzd_2810 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2810 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.11.2028") AS Tarih,
    sgr_yzd_2811 AS yzd_SG

FROM    t_End_Sigortalar
WHERE   sgr_yzd_2811 <> 0

UNION

SELECT
    L4_Kod,
    CDATE("01.12.2028") AS Tarih,
    sgr_yzd_2812 AS yzd_SG

FROM t_End_Sigortalar
WHERE sgr_yzd_2812 <> 0