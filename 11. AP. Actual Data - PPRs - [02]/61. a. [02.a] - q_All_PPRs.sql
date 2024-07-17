
-- q_All_PPRs - 11.61.a


INSERT INTO

    t_Excel_Aylik 
    ( 
        xls_Kod, 
        xls_From,
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar
    )

SELECT 

    xls_Kod, 
    "q_All_PPRs" AS ppr_From,   
    xls_Ay, 
    xls_Miktar, 
    - xls_Tutar  AS ppr_Tutar
    
FROM 
    q_PPRs

WHERE
    xls_Ay <= DLookup( "a_SonFinGrcAy", "t_Kabuller" )
    
ORDER BY 

    xls_Ay  DESC,    
    xls_Kod ASC
