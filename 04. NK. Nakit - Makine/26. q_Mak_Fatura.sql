
-- q_Mak_Fatura.sql - 04.26


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

GROUP BY 
    mka_No,
    mka_Kod
