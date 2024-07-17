
-- q_Mak_Saha_Alt.sql - 04.22


SELECT 
    
    mak_No      AS mka_No,
    mak_Kod     AS mka_Kod,
    mkp_Tarih   AS mka_Tarih, 
    mkp_Miktar  AS mka_Miktar,
    Baz_Fiyat   AS mka_Brt_BF,
    mkk_Fiyat   AS mka_Net_BF,

    - ( mkp_Miktar * mkk_Fiyat )    AS mka_ttr_EUR,

    cur_EUR                         AS mka_EUR,
    - mka_ttr_EUR * cur_EUR         AS mka_ttr_TRY

FROM 
    (
        q_Aylik_Mak_Saha 
        LEFT JOIN 
        t_Makine 
        ON 
            q_Aylik_Mak_Saha.mak_Kod = t_Makine.L4_R_Kod
    ) 
    LEFT JOIN 
    q_Currencies_All 
    ON 
        q_Aylik_Mak_Saha.mkp_Tarih = q_Currencies_All.cur_Ay

WHERE
    mkp_Miktar > 0
