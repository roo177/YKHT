
-- q_Mak_Fatura_Kns.sql - 04.26


SELECT 
    
    mka_Kod                 AS kns_Kod,
    mka_Tarih               AS kns_Trh, 
    Sum( mka_Miktar )       AS kns_Mkt,
    Sum( mka_Tutar_EUR )    AS kns_Tutar_EUR,
    Sum( mka_Tutar )        AS kns_Tutar

FROM 
    q_Mak_Fatura_Alt

GROUP BY
    mka_Kod,
    mka_Tarih      

ORDER BY
    mka_Kod
