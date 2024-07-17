
-- q_All_EndMak_Bkm - 21.33.a


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
    
    Replace( k_Rayicler_L3.L3_R_PozL4, "01.AMR", "04.BKM" ) AS em_Kod,
    "q_All_EndMak_Bkm"                                      AS em_From,
    t_Aylik_Say_EndMak.Tarih                                AS em_Ay,
    t_Aylik_Say_EndMak.say_EM                               AS em_Miktar,


    - IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ), q_Gnc_Art_Kts.A_USD, 1 ) *

    (
        ( 
            ET_Saat * 
            o_Yag_Ykt * 
            DLookup( "F_BF", "t_R_Fiyatlar", "F_Kod = '3_ML-1000-0040' " ) 
        )
        +
        t_Ydk_Drkt
    ) 
    * 
    DLookup( "g_Aylik_Calisma_Gunu", "t_Kabuller" ) * 
    DLookup( "a_Gnlk_Cals_Saat",     "t_Kabuller" ) *
    em_Miktar

    AS em_Tutar
    
FROM 
    (
        (
            t_Aylik_Say_EndMak 
            LEFT JOIN 
            k_Rayicler_L3 
            ON t_Aylik_Say_EndMak.L3_R_Kod = k_Rayicler_L3.L3_R_Kod
        ) 
        LEFT JOIN 
        q_Gnc_Art_Kts 
        ON t_Aylik_Say_EndMak.Tarih = q_Gnc_Art_Kts.g_Ay
    ) 
    LEFT JOIN 
    t_R_Fiyatlar 
    ON 
        (t_Aylik_Say_EndMak.em_Ver = t_R_Fiyatlar.F_ver) 
        AND 
        (t_Aylik_Say_EndMak.L3_R_Kod = t_R_Fiyatlar.F_Kod)

WHERE 

    t_Aylik_Say_EndMak.Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )
    AND
    o_Yag_Ykt + t_Ydk_Drkt > 0