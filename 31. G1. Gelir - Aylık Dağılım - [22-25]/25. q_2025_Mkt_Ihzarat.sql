
-- q_2025_Mkt_Ihz - 31.25


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.01.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2501              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2501 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.02.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2502              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2502 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.03.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2503              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2503 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.04.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2504              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2504 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.05.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2505              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2505 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.06.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2506              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2506 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.07.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2507              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2507 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.08.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2508              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2508 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.09.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2509              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2509 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.10.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2510              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2510 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.11.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2511              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2511 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.12.2025") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2512              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2512 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )