
-- q_Mak_Fatura_Alt.sql - 04.21


SELECT 
    
    mak_No               AS mka_No,   
    mak_Kod              AS mka_Kod,
    mkp_Tarih            AS mka_Tarih, 
    mkp_Miktar           AS mka_Miktar,
    mkp_Tutar            AS mka_Tutar_EUR,
    mkp_Tutar * cur_EUR  AS mka_Tutar

FROM 

    q_Aylik_Mak_Fatura 
    LEFT JOIN 
    q_Currencies_All 
    ON 
        q_Aylik_Mak_Fatura.mkp_Tarih = q_Currencies_All.cur_Ay
    
ORDER BY
    mak_No