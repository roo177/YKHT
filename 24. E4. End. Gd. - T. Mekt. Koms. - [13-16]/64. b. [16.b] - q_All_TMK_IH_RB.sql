
-- q_All_TMK_IH_RB - 24.64.b


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

    tm_Kod,
    "q_All_TMK_IH_RB" AS tm_From,
    tm_Ay,
    tm_Miktar,
    - tm_Tutar        AS tm_Cost

FROM        
    q_Alt_TMK_IH

WHERE
    tm_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY
    tm_Ay