
-- q_Analiz_Flat - 13.71


SELECT 
    
    q_Analiz_Flat_Alt.fla_Ver         AS flt_Ver, 
    
    k_Pozlar_L4.L4_Kod                  AS flt_Poz_Kod, 
    
    q_Analiz_Flat_Alt.fla_Rayic_Kod   AS flt_Ryc_Kod, 
    q_Analiz_Flat_Alt.fla_Rayic_Tip   AS flt_Ryc_Tip, 
    q_Analiz_Flat_Alt.fla_P1          AS flt_P1, 
    q_Analiz_Flat_Alt.fla_P2          AS flt_P2,  
    q_Analiz_Flat_Alt.fla_P3          AS flt_P3

FROM 
    
    q_Analiz_Flat_Alt 
    LEFT JOIN 
    k_Pozlar_L4 
    ON 
        q_Analiz_Flat_Alt.fla_Poz_Kod = k_Pozlar_L4.L4_Kod_Kns

ORDER BY 

    k_Pozlar_L4.L4_Kod