
-- z_2024_Imalat_Mkt - 82.11


SELECT 
    t_Aylik_Mkt_Gider.L4_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    
    M_2310 + M_2311 + M_2312 +
    M_2401 + M_2402 + M_2403 + M_2404 + M_2405 + M_2406 + 
    M_2407 + M_2408 + M_2409 + M_2410 + M_2411 + M_2412 AS tpl_mkt_2024, 
    
    k_Pozlar_L4.L4_Birim

FROM 
    t_Aylik_Mkt_Gider 
    LEFT JOIN k_Pozlar_L4 
    ON t_Aylik_Mkt_Gider.L4_Kod=k_Pozlar_L4.L4_Kod

WHERE (
        M_2310 + M_2311 + M_2312 +
        M_2401 + M_2402 + M_2403 + M_2404 + M_2405 + M_2406 + 
        M_2407 + M_2408 + M_2409 + M_2410 + M_2411 + M_2412
    ) <> 0;