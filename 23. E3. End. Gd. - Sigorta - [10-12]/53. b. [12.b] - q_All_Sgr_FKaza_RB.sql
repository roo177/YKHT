
-- q_All_Sgr_FKaza_RB - 23.53.b


INSERT INTO 

    t_Excel_Aylik_RB 
    ( 
        xls_Kod,
        xls_From, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 

    ks_Kod, 
    "q_All_Sgr_FKaza_RB" AS ks_From,
    ks_Ay,
    ks_Miktar, 
    - ks_Tutar           AS a_ks_Tutar

FROM 
    q_All_Sgr_FKaza_Alt

WHERE
    ks_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY
    ks_Ay