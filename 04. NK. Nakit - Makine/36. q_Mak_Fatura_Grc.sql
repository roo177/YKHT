
-- q_Mak_Fatura_Grc.sql - 04.36


SELECT 
    
    mka_No                  AS mkt_No,
    mka_Kod                 AS mkt_Kod,
    Sum( mka_Miktar )       AS mkt_Miktar, 
    Sum( mka_Tutar )        AS mkt_Tutar,
    Sum( mka_Tutar_EUR )    AS mkt_Tutar_EUR

FROM 
    q_Mak_Fatura_Alt

WHERE
    mka_Miktar <> 0 
    AND
    mka_Tarih <= DLookup( "a_SonFinGrcAy", "t_Kabuller" )

GROUP BY 
    mka_No,
    mka_Kod

ORDER BY
    mka_No
