
-- q_2027_Mkt_Gelir - 31.07


SELECT 
    AYGM_Poz, 
    CDATE("01.01.2027") AS glr_Ay, 
    M_2701              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2701 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.02.2027") AS glr_Ay, 
    M_2702              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2702 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.03.2027") AS glr_Ay, 
    M_2703              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2703 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.04.2027") AS glr_Ay, 
    M_2704              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2704 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.05.2027") AS glr_Ay, 
    M_2705              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2705 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.06.2027") AS glr_Ay, 
    M_2706              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2706 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.07.2027") AS glr_Ay, 
    M_2707              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2707 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.08.2027") AS glr_Ay, 
    M_2708              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2708 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.09.2027") AS glr_Ay, 
    M_2709              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2709 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.10.2027") AS glr_Ay, 
    M_2710              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2710 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.11.2027") AS glr_Ay, 
    M_2711              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2711 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.12.2027") AS glr_Ay, 
    M_2712              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2712 <> 0