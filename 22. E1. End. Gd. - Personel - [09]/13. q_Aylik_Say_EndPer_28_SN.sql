
-- q_Aylik_Say_EndPer_28_SN - 21.13


SELECT
    L3_R_Kod,
    CDATE("01.01.2028") AS Tarih,
    Sum( ep_2801      ) AS say_EP,
    IIf( IsNull( Sum( ep_2801 * ep_Arac_Prem  ) ), 0, Sum( ep_2801 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2801 * ep_Arac_Arazi ) ), 0, Sum( ep_2801 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.02.2028") AS Tarih,
    Sum( ep_2802      ) AS say_EP,
    IIf( IsNull( Sum( ep_2802 * ep_Arac_Prem  ) ), 0, Sum( ep_2802 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2802 * ep_Arac_Arazi ) ), 0, Sum( ep_2802 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.03.2028") AS Tarih,
    Sum( ep_2803      ) AS say_EP,
    IIf( IsNull( Sum( ep_2803 * ep_Arac_Prem  ) ), 0, Sum( ep_2803 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2803 * ep_Arac_Arazi ) ), 0, Sum( ep_2803 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.04.2028") AS Tarih,
    Sum( ep_2804      ) AS say_EP,
    IIf( IsNull( Sum( ep_2804 * ep_Arac_Prem  ) ), 0, Sum( ep_2804 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2804 * ep_Arac_Arazi ) ), 0, Sum( ep_2804 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.05.2028") AS Tarih,
    Sum( ep_2805      ) AS say_EP,
    IIf( IsNull( Sum( ep_2805 * ep_Arac_Prem  ) ), 0, Sum( ep_2805 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2805 * ep_Arac_Arazi ) ), 0, Sum( ep_2805 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.06.2028") AS Tarih,
    Sum( ep_2806      ) AS say_EP,
    IIf( IsNull( Sum( ep_2806 * ep_Arac_Prem  ) ), 0, Sum( ep_2806 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2806 * ep_Arac_Arazi ) ), 0, Sum( ep_2806 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.07.2028") AS Tarih,
    Sum( ep_2807      ) AS say_EP,
    IIf( IsNull( Sum( ep_2807 * ep_Arac_Prem  ) ), 0, Sum( ep_2807 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2807 * ep_Arac_Arazi ) ), 0, Sum( ep_2807 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.08.2028") AS Tarih,
    Sum( ep_2808      ) AS say_EP,
    IIf( IsNull( Sum( ep_2808 * ep_Arac_Prem  ) ), 0, Sum( ep_2808 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2808 * ep_Arac_Arazi ) ), 0, Sum( ep_2808 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.09.2028") AS Tarih,
    Sum( ep_2809      ) AS say_EP,
    IIf( IsNull( Sum( ep_2809 * ep_Arac_Prem  ) ), 0, Sum( ep_2809 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2809 * ep_Arac_Arazi ) ), 0, Sum( ep_2809 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.10.2028") AS Tarih,
    Sum( ep_2810      ) AS say_EP,
    IIf( IsNull( Sum( ep_2810 * ep_Arac_Prem  ) ), 0, Sum( ep_2810 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2810 * ep_Arac_Arazi ) ), 0, Sum( ep_2810 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.11.2028") AS Tarih,
    Sum( ep_2811      ) AS say_EP,
    IIf( IsNull( Sum( ep_2811 * ep_Arac_Prem  ) ), 0, Sum( ep_2811 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2811 * ep_Arac_Arazi ) ), 0, Sum( ep_2811 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.12.2028") AS Tarih,
    Sum( ep_2812      ) AS say_EP,
    IIf( IsNull( Sum( ep_2812 * ep_Arac_Prem  ) ), 0, Sum( ep_2812 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2812 * ep_Arac_Arazi ) ), 0, Sum( ep_2812 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
WHERE ep_2801 <> 0
GROUP BY L3_R_Kod