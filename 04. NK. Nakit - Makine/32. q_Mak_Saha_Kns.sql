
-- q_Mak_Saha_Kns.sql - 04.27


SELECT 
    
    mka_Kod             AS kns_Kod,
    mka_Tarih           AS kns_Trh, 
    Sum( mka_Miktar )   AS kns_Mkt,
    - Sum( mka_ttr_EUR )  AS kns_Tutar_EUR,
    - Sum( mka_ttr_TRY )  AS kns_Tutar

FROM 
    q_Mak_Saha_Alt

GROUP BY
    mka_Kod,
    mka_Tarih      

ORDER BY
    mka_Kod
