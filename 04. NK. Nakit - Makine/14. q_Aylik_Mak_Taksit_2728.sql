
-- q_Aylik_Mak_Fatura_2728 - 04.12


SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2027") AS mkp_Tarih,
    Sum( mak_2701 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2701 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.02.2027") AS mkp_Tarih,
    Sum( mak_2702 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2702 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.03.2027") AS mkp_Tarih,
    Sum( mak_2703 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2703 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.04.2027") AS mkp_Tarih,
    Sum( mak_2704 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2704 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2027") AS mkp_Tarih,
    Sum( mak_2705 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2705 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2027") AS mkp_Tarih,
    Sum( mak_2706 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2706 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2027") AS mkp_Tarih,
    Sum( mak_2707 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2707 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2027") AS mkp_Tarih,
    Sum( mak_2708 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2708 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2027") AS mkp_Tarih,
    Sum( mak_2709 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2709 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2027") AS mkp_Tarih,
    Sum( mak_2710 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2710 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2027") AS mkp_Tarih,
    Sum( mak_2711 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2711 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2027") AS mkp_Tarih,
    Sum( mak_2712 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2712 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod


UNION ALL


SELECT
    mak_No,
    mak_Kod,
    CDATE("01.01.2028") AS mkp_Tarih,
    Sum( mak_2801 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2801 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.02.2028") AS mkp_Tarih,
    Sum( mak_2802 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2802 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.03.2028") AS mkp_Tarih,
    Sum( mak_2803 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2803 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.04.2028") AS mkp_Tarih,
    Sum( mak_2804 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2804 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.05.2028") AS mkp_Tarih,
    Sum( mak_2805 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2805 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.06.2028") AS mkp_Tarih,
    Sum( mak_2806 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2806 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.07.2028") AS mkp_Tarih,
    Sum( mak_2807 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2807 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.08.2028") AS mkp_Tarih,
    Sum( mak_2808 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2808 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.09.2028") AS mkp_Tarih,
    Sum( mak_2809 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2809 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.10.2028") AS mkp_Tarih,
    Sum( mak_2810 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2810 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.11.2028") AS mkp_Tarih,
    Sum( mak_2811 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2811 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod

UNION ALL

SELECT
    mak_No,
    mak_Kod,
    CDATE("01.12.2028") AS mkp_Tarih,
    Sum( mak_2812 * mak_Taksit ) AS mkp_Tutar
FROM 
    t_Kabuller,
    t_Mak_Taksit_Cross
WHERE 
    t_Kabuller.ver_B = t_Mak_Taksit_Cross.ver_B
    AND
    mak_2812 * mak_Taksit <> 0
GROUP BY
    mak_No,
    mak_Kod
