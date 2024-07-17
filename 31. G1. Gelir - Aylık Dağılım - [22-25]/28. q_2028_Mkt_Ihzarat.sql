
-- q_2028_Mkt_Ihz - 31.28


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.01.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2801              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2801 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.02.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2802              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2802 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.03.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2803              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2803 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.04.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2804              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2804 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.05.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2805              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2805 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.06.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2806              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2806 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.07.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2807              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2807 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.08.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2808              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2808 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.09.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2809              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2809 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.10.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2810              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2810 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.11.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2811              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2811 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )


UNION


SELECT 

    AYGM_Poz            AS ihz_Kod, 
    CDATE("01.12.2028") AS ihz_Tarih, 
    Tip                 AS ihz_Tip,
    M_2812              AS ihz_Miktar

FROM 
    t_Aylik_Mkt_Ihz 

WHERE 

    M_2812 <> 0 AND ver_B = DLookup( "ver_B", "t_Kabuller" )