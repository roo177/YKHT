
-- q_All_EndMak_Amr - 21.31.a


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
    
    k_Rayicler_L3.L3_R_PozL4            AS em_Kod,
    "q_All_EndMak_Amr"                  AS em_From,
    t_Aylik_Say_EndMak.Tarih            AS em_Ay,
    t_Aylik_Say_EndMak.say_EM           AS em_Miktar,

    - ( F_BF * em_Miktar * cur_EUR / tpl_EM ) * max_EM AS em_Tutar

FROM 
    (   
        (
            (
                t_Aylik_Say_EndMak
                LEFT JOIN 
                k_Rayicler_L3 
                ON t_Aylik_Say_EndMak.L3_R_Kod = k_Rayicler_L3.L3_R_Kod
            ) 
            LEFT JOIN 
            q_Aylik_Say_EndMak_Tpl
            ON t_Aylik_Say_EndMak.L3_R_Kod = q_Aylik_Say_EndMak_Tpl.L3_R_Kod
        ) 
        LEFT JOIN 
        t_R_Fiyatlar 
        ON t_Aylik_Say_EndMak.L3_R_Kod = t_R_Fiyatlar.F_Kod
    )
    LEFT JOIN 
    q_Currencies_All 
    ON t_Aylik_Say_EndMak.Tarih = q_Currencies_All.cur_Ay

WHERE
    t_Aylik_Say_EndMak.Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )
    AND
    F_Ver = DLookup( "ver_B", "t_Kabuller" ) 