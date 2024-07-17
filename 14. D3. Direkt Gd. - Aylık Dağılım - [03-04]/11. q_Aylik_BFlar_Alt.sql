
-- q_Aylik_BFlar_Alt - 14.11
-- Artış katsayıları sorgusunu Dlookup'a çevirme, aylar kullanılıyor.

SELECT 

    A_L4_Kod, 
    A_Rayic_Tip, 
    A_L3_R_Kod, 
    D_BT, 
    g_Ay, 
    FF_Etki, 
    
    IIf(    
        
        DLookup( "bln_Eskalasyon", "t_Kabuller" ),

        Round(  IIf( FF_Etki = "ENF.A", D_BT * A_FFK,
                IIf( FF_Etki = "YKT.A", D_BT * A_YKT,
                IIf( FF_Etki = "EUR.A", D_BT * A_EUR, 
                IIf( FF_Etki = "USD.A", D_BT * A_USD,
                                        D_BT
        )))), 5 ),

        D_BT  
    )  
    AS BT_E

FROM 
    
    q_Analizler_L3_Alt 
    LEFT JOIN 
    q_Gnc_Art_Kts_L4 
    ON 
        q_Analizler_L3_Alt.A_L4_Kod = q_Gnc_Art_Kts_L4.L4_Kod

WHERE
    g_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )