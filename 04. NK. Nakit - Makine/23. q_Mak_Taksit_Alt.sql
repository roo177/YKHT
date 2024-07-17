
-- q_Mak_Taksit_Alt.sql - 04.23


SELECT 
    
    mkp_No                      AS mka_No,
    mkp_Kod                     AS mka_Kod, 
    mkp_Tarih                   AS mka_Tarih,
    mkp_Tutar * cur_EUR         AS mka_ttr_TRY,
    mkp_Tutar                   AS mka_ttr_EUR

FROM 
    (
        t_Aylik_Mak_Taksit 
        LEFT JOIN 
        t_Makine 
        ON 
            t_Aylik_Mak_Taksit.mkp_Kod = t_Makine.L4_R_Kod
    ) 
    LEFT JOIN 
    q_Currencies_All 
    ON 
        t_Aylik_Mak_Taksit.mkp_Tarih = q_Currencies_All.cur_Ay
