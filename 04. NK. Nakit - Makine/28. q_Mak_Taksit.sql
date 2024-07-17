
-- q_Mak_Taksit.sql - 04.28


SELECT 

    mka_No              AS mkt_No,
    mka_Kod             AS mkt_Kod, 
    Sum( mka_ttr_TRY )  AS mkt_Tutar,
    Sum( mka_ttr_EUR )  AS mkt_Tutar_EUR

FROM 
    q_Mak_Taksit_Alt

GROUP BY 
    mka_No,
    mka_Kod

ORDER BY
    mka_No
