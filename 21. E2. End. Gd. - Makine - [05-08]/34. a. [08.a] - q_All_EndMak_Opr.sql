
-- q_All_EndMak_Opr - 21.34.a


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

    Replace( k_Rayicler_L3.L3_R_PozL4, "01.AMR", "05.OPS" ) AS em_Kod,

    "q_All_EndMak_Opr"          AS em_From,
    t_Aylik_Say_EndMak.Tarih    AS em_Ay,
    t_Aylik_Say_EndMak.say_EM   AS em_Miktar,

    - IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ), q_Gnc_Art_Kts.A_FFK, 1 ) *
    DLookup( "p_Tpl_Maliyet", "q_Personel", "p_Kod = '" & L3_R_Operator & "'" ) *
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
    ON t_Aylik_Say_EndMak.L3_R_Kod = t_R_Fiyatlar.F_Kod
    

WHERE 
    
    t_Aylik_Say_EndMak.Tarih > DLookup( "a_SonFinGrcAy", "t_Kabuller" )
    AND
    F_Ver = DLookup( "ver_B", "t_Kabuller" )
    AND
    DLookup( "F_BF", "t_R_Fiyatlar", "F_Kod = '" & L3_R_Operator & "'" ) > 0