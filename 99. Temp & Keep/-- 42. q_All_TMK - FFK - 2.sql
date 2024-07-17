
-- q_All_TMK - FFK - 2 - 92.42

SELECT 
    
    "E-7.FIN-01.TEM-030" AS tmk_Kod, 
    tmk_Baz              AS tmk_Ay,  

    IIf( 
        
        ffk_Ay = t_TMK_Periyotlari.tmk_Baz,

        DSum( 

            "ffk_Tutar", 
            "q_Aylik_FF_Tutar",

            "ffk_Ay <= CDate('"
            & t_TMK_Periyotlari.tmk_Baz
            & "') AND ffk_Ay > CDate('" 
            & t_TMK_Periyotlari.tmk_Geri 
            & "')"
        ),

        0

    ) AS tmk_Tutar

FROM 
    t_TMK_Periyotlari 
    LEFT JOIN q_Aylik_FF_Tutar 
    ON t_TMK_Periyotlari.tmk_Baz = q_Aylik_FF_Tutar.ffk_Ay;
