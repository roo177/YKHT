
-- q_2026_Mkt_Gelir - 31.06


SELECT 
    AYGM_Poz, 
    CDATE("01.01.2026") AS glr_Ay, 
    M_2601              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2601 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.02.2026") AS glr_Ay, 
    M_2602              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2602 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.03.2026") AS glr_Ay, 
    M_2603              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2603 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.04.2026") AS glr_Ay, 
    M_2604              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2604 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.05.2026") AS glr_Ay, 
    M_2605              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2605 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.06.2026") AS glr_Ay, 
    M_2606              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2606 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.07.2026") AS glr_Ay, 
    M_2607              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2607 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.08.2026") AS glr_Ay, 
    M_2608              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2608 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.09.2026") AS glr_Ay, 
    M_2609              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2609 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.10.2026") AS glr_Ay, 
    M_2610              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2610 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.11.2026") AS glr_Ay, 
    M_2611              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2611 <> 0

UNION

SELECT 
    AYGM_Poz, 
    CDATE("01.12.2026") AS glr_Ay, 
    M_2612              AS glr_Miktar,
    ver_B               AS glr_Ver

FROM t_Aylik_Mkt_Gelir
WHERE M_2612 <> 0