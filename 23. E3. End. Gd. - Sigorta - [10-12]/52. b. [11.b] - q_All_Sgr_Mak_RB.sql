
-- q_All_Sgr_Mak_RB - 23.52.b


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

    t_Aylik_End_Gnl.end_Dagilim AS sgr_Kod,
    "q_All_Sgr_Mak_RB"          AS sgr_From,
    end_Ay                      AS sgr_Date,
    end_Yuzde                   AS sgr_Miktar,

    - Round( 
                (
                    IIf(

                        DLookup( "bln_Eskalasyon", "t_Kabuller" ), 
                        
                        mak_EUR * h_EUR, 
                        
                        mak_EUR * 
                        
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

                    ) + mak_TRY 
                )
                * end_Yuzde
                *
                IIf( 
                        t_Aylik_End_Gnl.end_Dagilim = "E-8.SGR-04.NKL-001",

                        0.0006 * 2,

                        0.03 *
                        IIf(
                                Year( end_Ay ) < 2025, 
                                1,
                                ( 
                                    1 - DLookup( "s_Sgrt_Sene_Indirim", "t_Kabuller" )
                                    * ( Year( end_Ay ) - 2024 ) 
                                )
                        )
                )
        ,2
    )
    AS sgr_Tutar

FROM 

    (
        t_Aylik_End_Gnl 
        LEFT JOIN q_ttr_Tpl_Mak_Sgr 
        ON t_Aylik_End_Gnl.end_Dagilim = q_ttr_Tpl_Mak_Sgr.L4_Kod   
    ) 
    LEFT JOIN q_Endeks 
    ON t_Aylik_End_Gnl.end_Ay = q_Endeks.g_Ay

WHERE 

    q_ttr_Tpl_Mak_Sgr.mak_EUR Is Not Null
    AND
    end_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )