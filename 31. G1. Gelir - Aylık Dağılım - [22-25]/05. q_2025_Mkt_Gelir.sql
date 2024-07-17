
-- q_2025_Mkt_Gelir - 31.05


SELECT 
    AYGM_Poz, 
    CDATE("01.01.2025") AS glr_Ay, 
    M_2501              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2501 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.02.2025") AS glr_Ay, 
    M_2502              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2502 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.03.2025") AS glr_Ay, 
    M_2503              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2503 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.04.2025") AS glr_Ay, 
    M_2504              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2504 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.05.2025") AS glr_Ay, 
    M_2505              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2505 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.06.2025") AS glr_Ay, 
    M_2506              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2506 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.07.2025") AS glr_Ay, 
    M_2507              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2507 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.08.2025") AS glr_Ay, 
    M_2508              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2508 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.09.2025") AS glr_Ay, 
    M_2509              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2509 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.10.2025") AS glr_Ay, 
    M_2510              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2510 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.11.2025") AS glr_Ay, 
    M_2511              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2511 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.12.2025") AS glr_Ay, 
    M_2512              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2512 <> 0