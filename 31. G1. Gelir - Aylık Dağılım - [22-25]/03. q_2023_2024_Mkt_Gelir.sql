
-- q_2023_2024_Mkt_Gelir - 31.03


SELECT 
    AYGM_Poz, 
    CDATE("01.10.2023") AS glr_Ay, 
    M_2310              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2310 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.11.2023") AS glr_Ay, 
    M_2311              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2311 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.12.2023") AS glr_Ay, 
    M_2312              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2312 <> 0


UNION


SELECT 
    AYGM_Poz, 
    CDATE("01.01.2024") AS glr_Ay, 
    M_2401              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2401 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.02.2024") AS glr_Ay, 
    M_2402              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2402 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.03.2024") AS glr_Ay, 
    M_2403              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2403 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.04.2024") AS glr_Ay, 
    M_2404              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2404 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.05.2024") AS glr_Ay, 
    M_2405              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2405 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.06.2024") AS glr_Ay, 
    M_2406              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2406 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.07.2024") AS glr_Ay, 
    M_2407              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2407 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.08.2024") AS glr_Ay, 
    M_2408              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2408 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.09.2024") AS glr_Ay, 
    M_2409              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2409 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.10.2024") AS glr_Ay, 
    M_2410              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2410 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.11.2024") AS glr_Ay, 
    M_2411              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2411 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.12.2024") AS glr_Ay, 
    M_2412              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2412 <> 0