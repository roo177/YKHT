
-- q_All_End_Gnl_RB - 26.51.b


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
    
    L4_End_Kod          AS end_Kod, 
    "q_All_End_Gnl_RB"  AS end_From,
    end_Ay, 
    end_Yuzde   AS end_Miktar,
    
    
    - end_Yuzde * L4_End_Miktar * L4_End_BF *

    IIf( 
        
        L4_End_Kur = "USD",

        IIf ( 
            
            DLookup( "bln_Eskalasyon", "t_Kabuller" ), 
            
            h_USD, 
            
            DLookup(

                "h_USD", 
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
        ),

        IIf( L4_End_Kur = "EUR",

            IIf ( 
                
                    DLookup( "bln_Eskalasyon", "t_Kabuller" ), 
                    
                    h_EUR, 
                    
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
                ),
            1
        )
    )
    AS end_Tutar

FROM 

    (
        t_End_Genel 
        LEFT JOIN t_Aylik_End_Gnl 
        ON t_End_Genel.L4_End_Dagilim = t_Aylik_End_Gnl.end_Dagilim
    ) 
    LEFT JOIN q_Endeks 
    ON t_Aylik_End_Gnl.end_Ay = q_Endeks.g_Ay

WHERE
    end_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY 
    L4_End_Kod,
    end_Ay
