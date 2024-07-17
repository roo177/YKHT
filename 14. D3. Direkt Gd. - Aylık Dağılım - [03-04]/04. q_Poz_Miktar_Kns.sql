
-- q_Poz_Miktar_Kns - 14.04


SELECT 

    k_Pozlar_L4.L4_Kod_Kns          AS kns_Kod, 
    Sum( q_Poz_Miktar.tpl_Miktar )  AS kns_Mkt

FROM 
    
    k_Pozlar_L4 
    RIGHT JOIN 
    q_Poz_Miktar 
    ON 
        k_Pozlar_L4.L4_Kod = q_Poz_Miktar.L4_Kod

GROUP BY 
    k_Pozlar_L4.L4_Kod_Kns
