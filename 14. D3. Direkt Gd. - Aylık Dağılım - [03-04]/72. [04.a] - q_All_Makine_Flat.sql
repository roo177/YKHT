
-- q_All_Makine_Flat.sql - 14.72


INSERT INTO 

    t_Excel_Aylik_RB 
    ( 
        xls_Kod, 
        xls_From,
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 

    nkt_Kod                     AS mfl_Kod, 
    "q_All_Makine_Flat"         AS mfl_From,
    nkt_Trh                     AS mfl_Tarih, 
    IIf( nkt_Ttr > 0, 1, 0 )    AS mfl_Miktar,
    - nkt_Ttr                   AS mfl_Tutar

FROM 
    q_Mak_Nakit

WHERE

    nkt_Trh > DateAdd( "m", 1, DLookup( "a_SonFinGrcAy", "t_Kabuller" ) )
    AND
    nkt_Ttr <> 0

ORDER BY 

    nkt_Trh,
    nkt_Kod
