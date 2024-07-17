
-- q_All_Sgr_FKaza - 23.53.a


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
    
    ks_Kod,
    "q_All_Sgr_FKaza_1" AS ks_From,
    ks_Ay, 
    ks_Miktar, 
    - ks_Tutar          AS a_ks_Tutar

FROM 
    q_All_Sgr_FKaza_Alt

WHERE
    ks_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )