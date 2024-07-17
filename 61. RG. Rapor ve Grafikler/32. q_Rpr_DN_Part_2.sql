
-- q_Rpr_DN_Part_2 - 51.32


INSERT INTO

    t_Rpr_DogusNakit 
    ( 
        dgs_Kod, 
        dgs_Ay, 
        dgs_Ttr 
    )

SELECT 
    
    k_Pozlar_L4.mtc_Dgs_Nkt         AS dgs_Kod, 
    t_Excel_Aylik.xls_Ay            AS dgs_Ay, 
    Sum( t_Excel_Aylik.xls_Tutar )  AS dgs_Ttr

FROM 
    
    k_Pozlar_L4 
    LEFT JOIN 
    t_Excel_Aylik 
    ON 
        k_Pozlar_L4.L4_Kod = t_Excel_Aylik.xls_Kod

WHERE 

    ( k_Pozlar_L4.mtc_Dgs_Nkt <> "KNSLD" )
    AND
    ( k_Pozlar_L4.mtc_Dgs_Nkt <> "SKIPT" )

GROUP BY

    k_Pozlar_L4.mtc_Dgs_Nkt,
    t_Excel_Aylik.xls_Ay

HAVING Sum( t_Excel_Aylik.xls_Tutar ) is not Null