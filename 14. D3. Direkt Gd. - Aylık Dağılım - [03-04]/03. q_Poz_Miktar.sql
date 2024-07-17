
-- q_Poz_Miktar - 14.03
-- a_t_Aylik_Mkt_Gider_Flat versiyona göre filtrelenerek geliyor.

SELECT

    a_t_Aylik_Mkt_Gider_Flat.L4_Kod, 
    Sum( a_t_Aylik_Mkt_Gider_Flat.Miktar ) AS tpl_Miktar

FROM a_t_Aylik_Mkt_Gider_Flat

GROUP BY a_t_Aylik_Mkt_Gider_Flat.L4_Kod;