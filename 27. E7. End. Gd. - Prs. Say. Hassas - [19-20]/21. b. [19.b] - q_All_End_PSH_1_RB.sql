
-- q_All_End_PSH_1_RB - 27.41.b


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

    t_End_PSB.L4_PSH_Kod    AS psh_Kod, 
    "q_All_End_PSH_1_RB"    AS psh_From,
    q_Say_End_AdmAy.Tarih   AS psh_Tarih, 
    tpl_E_AdmAy             AS psh_Miktar,


    - tpl_E_AdmAy * L4_PSH_BF * 

    IIf(    
        
        L4_PSH_Kur = "USD",

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

        IIf(    L4_PSH_Kur = "EUR",

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
    AS PSH_Tutar

FROM

    (  
        t_End_PSB 
        LEFT JOIN 
        q_Say_End_AdmAy 
        ON t_End_PSB.L4_PSH_Hassas = q_Say_End_AdmAy.Pers_Sinif   
    ) 
    LEFT JOIN 
    q_Endeks 
    ON q_Say_End_AdmAy.Tarih = q_Endeks.g_Ay

WHERE

    L4_PSH_Hassas = "Beyaz Yaka"
    AND
    q_Say_End_AdmAy.Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY 
    q_Say_End_AdmAy.Tarih