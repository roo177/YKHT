
-- q_Aylik_Say_EndPer_24_27 - 21.12


SELECT
    L3_R_Kod,
    CDATE("01.01.2024") AS Tarih,
    Sum( ep_2401      ) AS say_EP,
    IIf( IsNull( Sum( ep_2401 * ep_Arac_Prem  ) ), 0, Sum( ep_2401 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2401 * ep_Arac_Arazi ) ), 0, Sum( ep_2401 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.02.2024") AS Tarih,
    Sum( ep_2402      ) AS say_EP,
    IIf( IsNull( Sum( ep_2402 * ep_Arac_Prem  ) ), 0, Sum( ep_2402 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2402 * ep_Arac_Arazi ) ), 0, Sum( ep_2402 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.03.2024") AS Tarih,
    Sum( ep_2403      ) AS say_EP,
    IIf( IsNull( Sum( ep_2403 * ep_Arac_Prem  ) ), 0, Sum( ep_2403 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2403 * ep_Arac_Arazi ) ), 0, Sum( ep_2403 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.04.2024") AS Tarih,
    Sum( ep_2404 ) AS say_EP,
    IIf( IsNull( Sum( ep_2404 * ep_Arac_Prem  ) ), 0, Sum( ep_2404 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2404 * ep_Arac_Arazi ) ), 0, Sum( ep_2404 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.05.2024") AS Tarih,
    Sum( ep_2405      ) AS say_EP,
    IIf( IsNull( Sum( ep_2405 * ep_Arac_Prem  ) ), 0, Sum( ep_2405 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2405 * ep_Arac_Arazi ) ), 0, Sum( ep_2405 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.06.2024") AS Tarih,
    Sum( ep_2406      ) AS say_EP,
    IIf( IsNull( Sum( ep_2406 * ep_Arac_Prem  ) ), 0, Sum( ep_2406 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2406 * ep_Arac_Arazi ) ), 0, Sum( ep_2406 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.07.2024") AS Tarih,
    Sum( ep_2407      ) AS say_EP,
    IIf( IsNull( Sum( ep_2407 * ep_Arac_Prem  ) ), 0, Sum( ep_2407 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2407 * ep_Arac_Arazi ) ), 0, Sum( ep_2407 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.08.2024") AS Tarih,
    Sum( ep_2408      ) AS say_EP,
    IIf( IsNull( Sum( ep_2408 * ep_Arac_Prem  ) ), 0, Sum( ep_2408 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2408 * ep_Arac_Arazi ) ), 0, Sum( ep_2408 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.09.2024") AS Tarih,
    Sum( ep_2409      ) AS say_EP,
    IIf( IsNull( Sum( ep_2409 * ep_Arac_Prem  ) ), 0, Sum( ep_2409 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2409 * ep_Arac_Arazi ) ), 0, Sum( ep_2409 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.10.2024") AS Tarih,
    Sum( ep_2410      ) AS say_EP,
    IIf( IsNull( Sum( ep_2410 * ep_Arac_Prem  ) ), 0, Sum( ep_2410 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2410 * ep_Arac_Arazi ) ), 0, Sum( ep_2410 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.11.2024") AS Tarih,
    Sum( ep_2411      ) AS say_EP,
    IIf( IsNull( Sum( ep_2411 * ep_Arac_Prem  ) ), 0, Sum( ep_2411 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2411 * ep_Arac_Arazi ) ), 0, Sum( ep_2411 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.12.2024") AS Tarih,
    Sum( ep_2412      ) AS say_EP,
    IIf( IsNull( Sum( ep_2412 * ep_Arac_Prem  ) ), 0, Sum( ep_2412 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2412 * ep_Arac_Arazi ) ), 0, Sum( ep_2412 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.01.2025") AS Tarih,
    Sum( ep_2501      ) AS say_EP,
    IIf( IsNull( Sum( ep_2501 * ep_Arac_Prem  ) ), 0, Sum( ep_2501 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2501 * ep_Arac_Arazi ) ), 0, Sum( ep_2501 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.02.2025") AS Tarih,
    Sum( ep_2502      ) AS say_EP,
    IIf( IsNull( Sum( ep_2502 * ep_Arac_Prem  ) ), 0, Sum( ep_2502 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2502 * ep_Arac_Arazi ) ), 0, Sum( ep_2502 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.03.2025") AS Tarih,
    Sum( ep_2503      ) AS say_EP,
    IIf( IsNull( Sum( ep_2503 * ep_Arac_Prem  ) ), 0, Sum( ep_2503 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2503 * ep_Arac_Arazi ) ), 0, Sum( ep_2503 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.04.2025") AS Tarih,
    Sum( ep_2504      ) AS say_EP,
    IIf( IsNull( Sum( ep_2504 * ep_Arac_Prem  ) ), 0, Sum( ep_2504 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2504 * ep_Arac_Arazi ) ), 0, Sum( ep_2504 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.05.2025") AS Tarih,
    Sum( ep_2505      ) AS say_EP,
    IIf( IsNull( Sum( ep_2505 * ep_Arac_Prem  ) ), 0, Sum( ep_2505 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2505 * ep_Arac_Arazi ) ), 0, Sum( ep_2505 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.06.2025") AS Tarih,
    Sum( ep_2506      ) AS say_EP,
    IIf( IsNull( Sum( ep_2506 * ep_Arac_Prem  ) ), 0, Sum( ep_2506 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2506 * ep_Arac_Arazi ) ), 0, Sum( ep_2506 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.07.2025") AS Tarih,
    Sum( ep_2507      ) AS say_EP,
    IIf( IsNull( Sum( ep_2507 * ep_Arac_Prem  ) ), 0, Sum( ep_2507 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2507 * ep_Arac_Arazi ) ), 0, Sum( ep_2507 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.08.2025") AS Tarih,
    Sum( ep_2508      ) AS say_EP,
    IIf( IsNull( Sum( ep_2508 * ep_Arac_Prem  ) ), 0, Sum( ep_2508 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2508 * ep_Arac_Arazi ) ), 0, Sum( ep_2508 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.09.2025") AS Tarih,
    Sum( ep_2509      ) AS say_EP,
    IIf( IsNull( Sum( ep_2509 * ep_Arac_Prem  ) ), 0, Sum( ep_2509 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2509 * ep_Arac_Arazi ) ), 0, Sum( ep_2509 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.10.2025") AS Tarih,
    Sum( ep_2510      ) AS say_EP,
    IIf( IsNull( Sum( ep_2510 * ep_Arac_Prem  ) ), 0, Sum( ep_2510 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2510 * ep_Arac_Arazi ) ), 0, Sum( ep_2510 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.11.2025") AS Tarih,
    Sum( ep_2511      ) AS say_EP,
    IIf( IsNull( Sum( ep_2511 * ep_Arac_Prem  ) ), 0, Sum( ep_2511 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2511 * ep_Arac_Arazi ) ), 0, Sum( ep_2511 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.12.2025") AS Tarih,
    Sum( ep_2512      ) AS say_EP,
    IIf( IsNull( Sum( ep_2512 * ep_Arac_Prem  ) ), 0, Sum( ep_2512 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2512 * ep_Arac_Arazi ) ), 0, Sum( ep_2512 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
WHERE ep_2501 <> 0
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.01.2026") AS Tarih,
    Sum( ep_2601      ) AS say_EP,
    IIf( IsNull( Sum( ep_2601 * ep_Arac_Prem  ) ), 0, Sum( ep_2601 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2601 * ep_Arac_Arazi ) ), 0, Sum( ep_2601 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.02.2026") AS Tarih,
    Sum( ep_2602      ) AS say_EP,
    IIf( IsNull( Sum( ep_2602 * ep_Arac_Prem  ) ), 0, Sum( ep_2602 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2602 * ep_Arac_Arazi ) ), 0, Sum( ep_2602 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.03.2026") AS Tarih,
    Sum( ep_2603      ) AS say_EP,
    IIf( IsNull( Sum( ep_2603 * ep_Arac_Prem  ) ), 0, Sum( ep_2603 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2603 * ep_Arac_Arazi ) ), 0, Sum( ep_2603 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.04.2026") AS Tarih,
    Sum( ep_2604      ) AS say_EP,
    IIf( IsNull( Sum( ep_2604 * ep_Arac_Prem  ) ), 0, Sum( ep_2604 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2604 * ep_Arac_Arazi ) ), 0, Sum( ep_2604 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.05.2026") AS Tarih,
    Sum( ep_2605      ) AS say_EP,
    IIf( IsNull( Sum( ep_2605 * ep_Arac_Prem  ) ), 0, Sum( ep_2605 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2605 * ep_Arac_Arazi ) ), 0, Sum( ep_2605 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.06.2026") AS Tarih,
    Sum( ep_2606      ) AS say_EP,
    IIf( IsNull( Sum( ep_2606 * ep_Arac_Prem  ) ), 0, Sum( ep_2606 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2606 * ep_Arac_Arazi ) ), 0, Sum( ep_2606 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.07.2026") AS Tarih,
    Sum( ep_2607      ) AS say_EP,
    IIf( IsNull( Sum( ep_2607 * ep_Arac_Prem  ) ), 0, Sum( ep_2607 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2607 * ep_Arac_Arazi ) ), 0, Sum( ep_2607 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.08.2026") AS Tarih,
    Sum( ep_2608      ) AS say_EP,
    IIf( IsNull( Sum( ep_2608 * ep_Arac_Prem  ) ), 0, Sum( ep_2608 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2608 * ep_Arac_Arazi ) ), 0, Sum( ep_2608 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.09.2026") AS Tarih,
    Sum( ep_2609      ) AS say_EP,
    IIf( IsNull( Sum( ep_2609 * ep_Arac_Prem  ) ), 0, Sum( ep_2609 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2609 * ep_Arac_Arazi ) ), 0, Sum( ep_2609 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.10.2026") AS Tarih,
    Sum( ep_2610      ) AS say_EP,
    IIf( IsNull( Sum( ep_2610 * ep_Arac_Prem  ) ), 0, Sum( ep_2610 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2610 * ep_Arac_Arazi ) ), 0, Sum( ep_2610 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.11.2026") AS Tarih,
    Sum( ep_2611      ) AS say_EP,
    IIf( IsNull( Sum( ep_2611 * ep_Arac_Prem  ) ), 0, Sum( ep_2611 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2611 * ep_Arac_Arazi ) ), 0, Sum( ep_2611 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.12.2026") AS Tarih,
    Sum( ep_2612      ) AS say_EP,
    IIf( IsNull( Sum( ep_2612 * ep_Arac_Prem  ) ), 0, Sum( ep_2612 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2612 * ep_Arac_Arazi ) ), 0, Sum( ep_2612 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
WHERE ep_2601 <> 0
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.01.2027") AS Tarih,
    Sum( ep_2701      ) AS say_EP,
    IIf( IsNull( Sum( ep_2701 * ep_Arac_Prem  ) ), 0, Sum( ep_2701 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2701 * ep_Arac_Arazi ) ), 0, Sum( ep_2701 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.02.2027") AS Tarih,
    Sum( ep_2702      ) AS say_EP,
    IIf( IsNull( Sum( ep_2702 * ep_Arac_Prem  ) ), 0, Sum( ep_2702 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2702 * ep_Arac_Arazi ) ), 0, Sum( ep_2702 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.03.2027") AS Tarih,
    Sum( ep_2703      ) AS say_EP,
    IIf( IsNull( Sum( ep_2703 * ep_Arac_Prem  ) ), 0, Sum( ep_2703 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2703 * ep_Arac_Arazi ) ), 0, Sum( ep_2703 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.04.2027") AS Tarih,
    Sum( ep_2704      ) AS say_EP,
    IIf( IsNull( Sum( ep_2704 * ep_Arac_Prem  ) ), 0, Sum( ep_2704 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2704 * ep_Arac_Arazi ) ), 0, Sum( ep_2704 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.05.2027") AS Tarih,
    Sum( ep_2705      ) AS say_EP,
    IIf( IsNull( Sum( ep_2705 * ep_Arac_Prem  ) ), 0, Sum( ep_2705 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2705 * ep_Arac_Arazi ) ), 0, Sum( ep_2705 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.06.2027") AS Tarih,
    Sum( ep_2706      ) AS say_EP,
    IIf( IsNull( Sum( ep_2706 * ep_Arac_Prem  ) ), 0, Sum( ep_2706 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2706 * ep_Arac_Arazi ) ), 0, Sum( ep_2706 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.07.2027") AS Tarih,
    Sum( ep_2707      ) AS say_EP,
    IIf( IsNull( Sum( ep_2707 * ep_Arac_Prem  ) ), 0, Sum( ep_2707 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2707 * ep_Arac_Arazi ) ), 0, Sum( ep_2707 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.08.2027") AS Tarih,
    Sum( ep_2708      ) AS say_EP,
    IIf( IsNull( Sum( ep_2708 * ep_Arac_Prem  ) ), 0, Sum( ep_2708 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2708 * ep_Arac_Arazi ) ), 0, Sum( ep_2708 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.09.2027") AS Tarih,
    Sum( ep_2709      ) AS say_EP,
    IIf( IsNull( Sum( ep_2709 * ep_Arac_Prem  ) ), 0, Sum( ep_2709 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2709 * ep_Arac_Arazi ) ), 0, Sum( ep_2709 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.10.2027") AS Tarih,
    Sum( ep_2710      ) AS say_EP,
    IIf( IsNull( Sum( ep_2710 * ep_Arac_Prem  ) ), 0, Sum( ep_2710 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2710 * ep_Arac_Arazi ) ), 0, Sum( ep_2710 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.11.2027") AS Tarih,
    Sum( ep_2711      ) AS say_EP,
    IIf( IsNull( Sum( ep_2711 * ep_Arac_Prem  ) ), 0, Sum( ep_2711 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2711 * ep_Arac_Arazi ) ), 0, Sum( ep_2711 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
GROUP BY L3_R_Kod

UNION

SELECT
    L3_R_Kod,
    CDATE("01.12.2027") AS Tarih,
    Sum( ep_2712      ) AS say_EP,
    IIf( IsNull( Sum( ep_2712 * ep_Arac_Prem  ) ), 0, Sum( ep_2712 * ep_Arac_Prem  ) ) AS say_Arac_Prem,
    IIf( IsNull( Sum( ep_2712 * ep_Arac_Arazi ) ), 0, Sum( ep_2712 * ep_Arac_Arazi ) ) AS say_Arac_Arazi

FROM t_End_Personel
WHERE ep_2701 <> 0
GROUP BY L3_R_Kod