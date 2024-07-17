
-- q_All_TMK_FF - 24.62.a


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
    "q_All_TMK_FF"  AS tm_From,
    tm_Ay,
    tm_Miktar,
    - tm_Tutar      AS a_tm_Tutar

FROM        
    q_Alt_TMK_FF

WHERE
    tm_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )