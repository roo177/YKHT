
-- q_All_Mob - 25.51.a 
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
    
    L4_Mob_Kod  AS mob_Code,
    "q_All_Mob" AS mob_From,

    end_Ay      AS mob_Date, 
    end_Yuzde   AS mob_Qnty,


    - end_Yuzde * L4_Mob_Tutar * 

    IIf(    L4_Mob_Kur = "USD",

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

    IIf(    L4_Mob_Kur = "EUR",

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
    ))
    AS mob_Cost


FROM 
    (
        t_Aylik_End_Gnl 
        RIGHT JOIN 
        t_Mobilizasyon 
        ON t_Aylik_End_Gnl.end_Dagilim = t_Mobilizasyon.L3_Mob_Kod
    ) 
    LEFT JOIN q_Endeks 
    ON t_Aylik_End_Gnl.end_Ay = q_Endeks.g_Ay

WHERE
    end_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY 
    L4_Mob_Kod
