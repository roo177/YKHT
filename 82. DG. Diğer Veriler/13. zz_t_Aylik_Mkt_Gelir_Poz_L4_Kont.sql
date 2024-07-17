
-- zz_t_Aylik_Mkt_Gelir_Poz_L4_Kont - 82.13


SELECT 
    t_Aylik_Mkt_Gelir.AYGM_Poz, 
    k_Pozlar_L4.AYGM_Poz

FROM 
    t_Aylik_Mkt_Gelir 
    LEFT JOIN k_Pozlar_L4 
    ON t_Aylik_Mkt_Gelir.AYGM_Poz = k_Pozlar_L4.AYGM_Poz;