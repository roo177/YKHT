
-- q_All_EndMakine_Flat.sql - 14.73


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

    nkt_Kod                     AS emk_Kod,
    "q_All_EndMakine_Flat"      AS emk_From,
    nkt_Trh                     AS emk_Trh,
    IIf( nkt_Ttr > 0, 1, 0 )    AS emk_Mkt,
    - nkt_Ttr                   AS emk_Ttr

FROM 
    q_Mak_Nakit

WHERE

    nkt_Kod LIKE "E*"
    AND
    nkt_Trh > DLookup( "a_SonFinGrcAy", "t_Kabuller" )
    AND
    nkt_Ttr > 0

ORDER BY

    nkt_Trh,
    nkt_Kod
