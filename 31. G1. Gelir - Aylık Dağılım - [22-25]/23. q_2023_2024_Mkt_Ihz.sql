
-- q_2023_2024_Mkt_Ihz - 31.23


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.10.2023") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2310              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 
    M_2310 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.11.2023") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2311              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2311 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.12.2023") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2312              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2312 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.01.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2401              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2401 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.02.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2402              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2402 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.03.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2403              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2403 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.04.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2404              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2404 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.05.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2405              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2405 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.06.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2406              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2406 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.07.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2407              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2407 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.08.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2408              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2408 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.09.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2409              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2409 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.10.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2410              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2410 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.11.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2411              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2411 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.12.2024") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2412              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2412 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )