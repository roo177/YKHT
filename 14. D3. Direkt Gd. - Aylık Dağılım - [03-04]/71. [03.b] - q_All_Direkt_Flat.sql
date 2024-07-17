
-- q_All_Direkt_Flat.sql - 14.71


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

    fay_Kod             AS fle_Kod, 
    "q_All_Direkt_Flat" AS fle_From,
    fay_Tarih           AS fle_Tarih, 
    fay_Miktar          AS fle_Miktar, 

    - IIf(    
        DLookup( "bln_Eskalasyon", "t_Kabuller" ),

            IIf(    fay_Etki_Tip = "ENF.A",  A_FFK,
            IIf(    fay_Etki_Tip = "YKT.A",  A_YKT,
            IIf(    fay_Etki_Tip = "EUR.A",  A_EUR,
            IIf(    fay_Etki_Tip = "USD.A",  A_USD,  
                                             0,
            )))),
            1  
    ) 
    *
    fay_Tutar       
        AS fle_Tutar 

FROM 

    q_Direkt_Flat_Alt 
    LEFT JOIN 
    q_Gnc_Art_Kts 
    ON 
        q_Direkt_Flat_Alt.fay_Tarih = q_Gnc_Art_Kts.g_Ay

WHERE
    fay_Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY 

    fay_Tarih,
    q_Direkt_Flat_Alt.fay_Kod
