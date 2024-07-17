
-- q_All_EndPer_RB - 21.31.b


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
    
    k_Rayicler_L3.L3_R_PozL4    AS ep_Kod,
    "q_All_EndPer_RB"           AS ep_From,
    t_Aylik_Say_EndPer.Tarih    AS ep_Ay,
    t_Aylik_Say_EndPer.say_EP   AS ep_Say,
    
    - say_EP * p_Tpl_Maliyet * IIf( bln_Eskalasyon, q_Gnc_Art_Kts.A_FFK, 1 ) AS ep_Tutar

FROM
    (
        (
            (
                t_Aylik_Say_EndPer 
                LEFT JOIN 
                k_Rayicler_L3
                ON 
                    t_Aylik_Say_EndPer.L3_R_Kod = k_Rayicler_L3.L3_R_Kod
            ) 
            LEFT JOIN 
            q_Gnc_Art_Kts 
            ON 
                t_Aylik_Say_EndPer.Tarih = q_Gnc_Art_Kts.g_Ay
        )
        LEFT JOIN 
        q_Kabuller_R3 
        ON 
            t_Aylik_Say_EndPer.L3_R_Kod = q_Kabuller_R3.L3_R_Kod
    )
    LEFT JOIN 
    q_Personel 
    ON 
        t_Aylik_Say_EndPer.L3_R_Kod = q_Personel.p_Kod

WHERE
    t_Aylik_Say_EndPer.Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )

ORDER BY
    t_Aylik_Say_EndPer.Tarih