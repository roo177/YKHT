
-- q_Rpr_DN_Part_3 - 51.33


INSERT INTO

    t_Rpr_DogusNakit 
    ( 
        dgs_Kod, 
        dgs_Ay, 
        dgs_Ttr 
    )

SELECT 
    
    dgs_Kod,
    dgs_Ay,
    dgs_Ttr

FROM 
    t_Rpr_DN_YuvarlamaD