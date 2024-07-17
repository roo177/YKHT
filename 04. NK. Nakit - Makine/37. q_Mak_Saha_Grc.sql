
-- q_Mak_Saha_Grc.sql - 04.37


SELECT 

    mka_No              AS mkt_No,
    mka_Kod             AS mkt_Kod, 
    Sum( mka_Miktar )   AS mkt_Miktar, 
    Sum( mka_ttr_TRY )  AS mkt_Tutar,
    Sum( mka_ttr_EUR )  AS mkt_Tutar_EUR

FROM 
    q_Mak_Saha_Alt

WHERE
    mka_Miktar <> 0 
    AND
    mka_Tarih <= DLookup( "a_SonFinGrcAy", "t_Kabuller" )

GROUP BY 
    mka_No,
    mka_Kod

ORDER BY
    mka_No
