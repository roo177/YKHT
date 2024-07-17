
-- q_2027_Mkt_Ihz - 31.27


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.01.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2701              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2701 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.02.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2702              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2702 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.03.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2703              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2703 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.04.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2704              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2704 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.05.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2705              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2705 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.06.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2706              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2706 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.07.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2707              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2707 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.08.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2708              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2708 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.09.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2709              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2709 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.10.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2710              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2710 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.11.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2711              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2711 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.12.2027") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2712              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2712 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )