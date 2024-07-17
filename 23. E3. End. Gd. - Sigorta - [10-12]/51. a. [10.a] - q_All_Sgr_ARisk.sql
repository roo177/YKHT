
-- q_All_Sgr_ARisk - 23.51.a
-- Single Ref to Last EUR Rate 

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
    

    t_Aylik_End_Gnl.end_Dagilim AS sgr_Kod,
    "q_All_Sgr_ARisk"           AS sgr_From,
    end_Ay                      AS sgr_Date,
    end_Yuzde                   AS sgr_Miktar, 
    

    - IIf(

        DLookup( "bln_Eskalasyon", "t_Kabuller" ),
        
        DLookup( "s_All_Risk_Sigorta_Bdl", "t_Kabuller" ) * h_EUR,

        DLookup( "s_All_Risk_Sigorta_Bdl", "t_Kabuller" ) * 
        DLookup( 
                    "h_EUR", 
                    "q_Endeks", 
                    "g_Ay = " & "#" & Format( 
            
                        DLookup( 
                            "ver_Ay", 
                            "t_Ver_Butce", 
                            "ver_Say = " &  DLookup( "ver_B", "t_Kabuller" ) 
                        ), 
                        
                        "mm"   
            
                    ) & "/1" & 
                    "/" & Format( 
                        
                        DLookup( 
                            "ver_Ay", 
                            "t_Ver_Butce", 
                            "ver_Say = " &  DLookup( "ver_B", "t_Kabuller" ) 
                        ), 
                        
                        "yyyy" ) & "#" 
        ) 
    )
    *  end_Yuzde

    AS sgr_Tutar


FROM 
    
    t_Aylik_End_Gnl  
    LEFT JOIN 
    q_Endeks ON t_Aylik_End_Gnl.end_Ay = q_Endeks.g_Ay


WHERE 
    
    t_Aylik_End_Gnl.end_Dagilim = "E-8.SGR-01.ALL-001"
    AND
    end_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )