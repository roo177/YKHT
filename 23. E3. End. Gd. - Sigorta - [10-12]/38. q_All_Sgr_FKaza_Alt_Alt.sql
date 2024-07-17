
-- q_All_Sgr_FKaza_Alt_Alt - 23-38


INSERT INTO 

    a_t_All_Sgr_FKaza_Alt_Alt 
    ( 
        fks_Kod, 
        fks_Ay, 
        fks_Miktar, 
        fks_Tutar 
    )

SELECT 
    
    "E-8.SGR-05.PRS-001" AS fks_Kod, 
    q_Say_Tpl_AdmAy.g_Ay AS fks_Ay,
    tpl_AdmAy            AS fks_Miktar, 
    
    Round(
            IIf(

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
                        "yyyy" 
                    ) & "#" 
                ) 
            )
            
            * DLookup( "s_FKaza_KisiAy_USD", "t_Kabuller" )
            * tpl_AdmAy
        ,2 
    ) 
    AS fks_Tutar

FROM 
    
    q_Say_Tpl_AdmAy  
    LEFT JOIN 
    q_Endeks ON q_Say_Tpl_AdmAy.g_Ay = q_Endeks.g_Ay;