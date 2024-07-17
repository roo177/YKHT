
-- q_Mak_Atama_Toplamlar - 12.01.d


SELECT 
    
    DLookup( "ver_B",   "t_Kabuller" )                              AS but_Ver, 
    DLookup( "ver_Ay",  "t_Ver_Butce",  "ver_Say = " & but_Ver  )   AS but_Ay, 

    DLookup( 
        "h_EUR",   
        "q_Endeks",     
        "g_Ay = " & "#" & Format( but_Ay, "mm" ) & "/1" & "/" & Format( but_Ay, "yyyy" ) & "#" ) 
    AS rate_EUR, 
    
    Sum( mkp_Miktar * Baz_Fiyat / IIf( B_Kur = "TRY", rate_EUR, 1))                       AS sumBaz, 
    Sum( mkp_Miktar * ( mkk_SatisKar + mkk_FinMas ) / IIf(B_Kur = "TRY",rate_EUR, 1 ))    AS sumFinMas,
    Sum( mkp_Miktar * mkk_ydGV / IIf( B_Kur = "TRY", rate_EUR, 1 ))                       AS sumYDGV,

    Sum( 
        mkp_Miktar * 
        ( Baz_Fiyat + mkk_SatisKar + mkk_FinMas + mkk_ydGV ) * 
        IIf( b_Gmr, 1.01, 1 ) / IIf( B_Kur = "TRY", rate_EUR, 1 )
    ) AS sumMaliyet

FROM 
    t_Makine 
    INNER JOIN
    q_Aylik_Mak_Saha 
    ON 
        t_Makine.L4_R_Kod = q_Aylik_Mak_Saha.mak_Kod