
-- q_All_TMK_KH - 24.63.a


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

    tm_Kod,
    "q_All_TMK_KH"  AS tm_From,
    tm_Ay,
    tm_Miktar,
    - tm_Tutar      AS a_tm_Cost

FROM        
    q_Alt_TMK_KH

WHERE
    tm_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )