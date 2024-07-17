
-- q_Rpr_DogusNakit - 51.34


SELECT 
    
    dgs_Kod, 
    "dnm_2024"      AS dgs_Donem, 
    Sum( dgs_Ttr )  AS dgs_Tutar

FROM 
    t_Rpr_DogusNakit

WHERE
    dgs_Ay < #1/1/2025#

GROUP BY
    dgs_Kod


UNION


SELECT 
    
    dgs_Kod, 
    "dnm_2025"      AS dgs_Donem, 
    Sum( dgs_Ttr )  AS dgs_Tutar

FROM 
    t_Rpr_DogusNakit

WHERE

    dgs_Ay >= #1/1/2025# 
    AND 
    dgs_Ay < #1/1/2026# 

GROUP BY
    dgs_Kod


UNION


SELECT 
    
    dgs_Kod, 
    "dnm_All"       AS dgs_Donem, 
    Sum( dgs_Ttr )  AS dgs_Tutar

FROM 
    t_Rpr_DogusNakit

GROUP BY
    dgs_Kod