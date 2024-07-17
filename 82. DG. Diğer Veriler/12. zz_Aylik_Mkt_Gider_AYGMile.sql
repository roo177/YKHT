
-- zz_Aylik_Mkt_Gider_AYGMile - 82.12


SELECT 
    
    k_Pozlar_L4.AYGM_Poz, 
    t_Aylik_Mkt_Gider.*

FROM 
    k_Pozlar_L4 
    INNER JOIN 
    t_Aylik_Mkt_Gider 
    ON k_Pozlar_L4.L4_Kod = t_Aylik_Mkt_Gider.L4_Kod;