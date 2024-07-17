
-- q_Gnc_Art_Kts - 09.21


SELECT 
    
    g_Ay, 
    "Fiyat Farkı" AS f_Baslik,

    Round( IIf( a_SonFinGrcAy < g_Ay, 
        FFK_AK / 
        ( SELECT FFK_AK FROM q_Art_Kts, t_Kabuller WHERE g_Ay = a_SonFinGrcAy )
        , 1 ), 5 ) AS A_FFK,
    
    Round( IIf( a_SonFinGrcAy < g_Ay, 
        YKT_AK / 
        ( SELECT YKT_AK FROM q_Art_Kts, t_Kabuller WHERE g_Ay = a_SonFinGrcAy )
        , 1 ), 5 ) AS A_YKT,

    Round( IIf( a_SonFinGrcAy < g_Ay, 
        BKM_AK / 
        ( SELECT BKM_AK FROM q_Art_Kts, t_Kabuller WHERE g_Ay = a_SonFinGrcAy )
        , 1 ), 5 ) AS A_BKM,

    Round( IIf( a_SonFinGrcAy < g_Ay, 
        EUR_AK / 
        ( SELECT EUR_AK FROM q_Art_Kts, t_Kabuller WHERE g_Ay = a_SonFinGrcAy )
        , 1 ), 5 ) AS A_EUR,

    Round( IIf( a_SonFinGrcAy < g_Ay, 
        USD_AK / 
        ( SELECT USD_AK FROM q_Art_Kts, t_Kabuller WHERE g_Ay = a_SonFinGrcAy )
        , 1 ), 5 ) AS A_USD
    
FROM

    q_Art_Kts,
    t_Kabuller;