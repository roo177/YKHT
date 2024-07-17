
-- q_Nakliye - 25.25


SELECT 

    t_Nakliye.L4_Kod, 
    
    Round( 
        tkt_Km * ( 
            Int( 
                    (  a_Gnlk_Cals_Saat * 60 )
                    / Round( 
                        ( 
                            ( 
                                Int( - Nak_Mes / Hiz_Gid * 60 ) / -1 ) + 
                                (
                                    Int( - Nak_Mes / Hiz_Gel * 60 ) / -1 ) + Sre_Ybs
                        ) 
                        / Yzd_Vrm
                    ,0
                    )
                ) * Nak_Mes * 2 
            ) 
            / a_Gnlk_Cals_Saat
        ,2 
        ) AS Saat_Yakt_Tktm, 
        
    Round( Int( ( a_Gnlk_Cals_Saat * 60 ) / 
    Round( ( ( Int( - Nak_Mes / Hiz_Gid * 60 ) / -1 ) 
    + ( Int( - Nak_Mes / Hiz_Gel * 60 ) / -1 ) + Sre_Ybs ) / Yzd_Vrm, 0))
    * Kam_Kap / a_Gnlk_Cals_Saat, 2) AS Saat_Kaps

FROM 

    t_Nakliye 
    LEFT JOIN 
    q_Kabuller_L4 ON t_Nakliye.L4_Kod = q_Kabuller_L4.L4_Kod;
