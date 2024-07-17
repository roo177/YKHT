
-- q_All_Direkt - 14.21


INSERT INTO 

    t_Excel_Aylik 
    ( 
        xls_Kod,
        xls_From, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 
    
    q_Aylik_Mkt_Gider.L4_Kod AS drt_Code, 
    "q_All_Direkt"           AS drt_From,
    Tarih                    AS drt_Date,
    Miktar                   AS drt_Qnty, 
    - Miktar * Aylik_BF      AS drt_Cost

FROM 

    q_Aylik_Mkt_Gider 
    LEFT JOIN 
    q_Aylik_BFlar_Extend 
    ON 
        (q_Aylik_Mkt_Gider.Tarih = q_Aylik_BFlar_Extend.g_Ay) 
        AND 
        (q_Aylik_Mkt_Gider.L4_Kod = q_Aylik_BFlar_Extend.L4_Kod)

WHERE 

    q_Aylik_Mkt_Gider.L4_Kod Like "D*"
    AND
    Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY

    Tarih,
    q_Aylik_Mkt_Gider.L4_Kod
