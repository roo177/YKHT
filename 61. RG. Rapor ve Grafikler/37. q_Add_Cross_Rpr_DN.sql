
-- q_Cross_Rpr_DN - 51.35


INSERT INTO 

    t_Cross_Rpr_DN 
    ( 
        dgs_Kod, 
        dnm_2024, 
        dnm_2025, 
        dnm_All 
    )

SELECT 

    q_Cross_Rpr_DN.dgs_Kod, 
    q_Cross_Rpr_DN.dnm_2024, 
    q_Cross_Rpr_DN.dnm_2025, 
    q_Cross_Rpr_DN.dnm_All

FROM 
    q_Cross_Rpr_DN