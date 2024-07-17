INSERT INTO 

    t_Excel_Aylik 
    ( 
        xls_Kod, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 
    
    L4_Kod, 
    Tarih,
    Miktar,

    - IIf ( 
        
        IsNull( Aylik_BF ), 

        DLookup( 
          
            "Aylik_BF",
          
            "q_Aylik_BFlar", 
          
            "A_L4_Kod = '"  &  DLookup( "L4_Kod_Kns", "k_Pozlar_L4", "L4_Kod = '" & L4_Kod & "'" )  &  
            "' AND g_Ay = " & "#" & Format( Tarih, "mm"   ) & "/1"
                            & "/" & Format( Tarih, "yyyy" ) & "#" 
        ),

        Aylik_BF  
    ) 
    * Miktar 
    AS Tutar

FROM 
    t_Aylik_Mkt_Gider_Flat 
    LEFT JOIN 
    q_Aylik_BFlar 
    ON 
        (t_Aylik_Mkt_Gider_Flat.Tarih = q_Aylik_BFlar.g_Ay) 
        AND 
        (t_Aylik_Mkt_Gider_Flat.L4_Kod = q_Aylik_BFlar.A_L4_Kod)

WHERE 

    L4_Kod Like "D*"
    AND
    Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )