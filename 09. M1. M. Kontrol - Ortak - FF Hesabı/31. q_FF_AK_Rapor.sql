
-- q_FF_AK_Rapor - 09.31


INSERT INTO t_FF_AK_Rapor ( g_Ay, h_EUR, h_USD, FFK_AK, A_FFK, A_EUR, A_USD, e_Tip )

SELECT 
    
    q_Endeks.g_Ay, 
    q_Endeks.h_EUR, 
    q_Endeks.h_USD, 
    
    q_Art_Kts.FFK_AK, 
    
    q_Gnc_Art_Kts.A_FFK, 
    q_Gnc_Art_Kts.A_EUR, 
    q_Gnc_Art_Kts.A_USD,

    IIf( q_Endeks.g_Ay > ( SELECT a_SonFinGrcAy FROM t_Kabuller ),
        "PROJEKSİYON",
        "GERÇEKLEŞEN"
    ) AS e_Tip

FROM 

    ( q_Endeks LEFT JOIN q_Art_Kts ON q_Endeks.g_Ay = q_Art_Kts.g_Ay ) 
    LEFT JOIN 
    q_Gnc_Art_Kts ON q_Endeks.g_Ay = q_Gnc_Art_Kts.g_Ay

ORDER BY q_Endeks.g_Ay;