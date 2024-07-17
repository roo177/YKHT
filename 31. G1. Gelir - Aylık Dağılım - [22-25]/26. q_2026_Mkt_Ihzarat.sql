
-- q_2026_Mkt_Ihz - 31.26


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.01.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2601              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2601 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.02.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2602              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2602 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.03.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2603              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2603 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.04.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2604              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2604 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.05.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2605              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2605 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.06.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2606              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2606 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.07.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2607              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2607 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.08.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2608              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2608 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.09.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2609              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2609 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.10.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2610              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2610 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.11.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2611              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2611 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.12.2026") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2612              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2612 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )