
-- q_Poz_MakSa_YA - 12.07
-- A_Rayic_Tip'i Left( t_Yrd_Analizler.A_L3_R_Kod, 4) = "1_MK" ile değiştirme, aynı değil ( Yakıt yüzünden )

SELECT 

    t_Analizler.A_L4_Kod, 
    t_Yrd_Analizler.A_L3_R_Kod, 
    t_Yrd_Analizler.A_Rayic_Tip, 
    
    Round( 
        t_Yrd_Analizler.A_P1_Dgr / 
        t_Yrd_Analizler.A_P3_Dgr * 
        t_Analizler.A_P1_Dgr * 
        t_Analizler.A_P2_Dgr * 
        t_Analizler.A_P3_Dgr 
        , 
        6 
    ) AS Birim_Saat,

    q_Poz_Miktar.tpl_Miktar AS Imalat_Miktar,

    Round( 
        t_Yrd_Analizler.A_P1_Dgr / 
        t_Yrd_Analizler.A_P3_Dgr * 
        t_Analizler.A_P1_Dgr * 
        t_Analizler.A_P2_Dgr * 
        t_Analizler.A_P3_Dgr *
        tpl_Miktar,
        2 
    ) AS Poz_Mak_Sa

FROM 
    (
        t_Yrd_Analizler 
        LEFT JOIN
        t_Analizler 
        ON 
            (t_Yrd_Analizler.A_bV = t_Analizler.A_bV) 
            AND 
            (t_Yrd_Analizler.A_L4_Kod = t_Analizler.A_L3_R_Kod)
    ) 
    LEFT JOIN 
    q_Poz_Miktar 
    ON 
        t_Analizler.A_L4_Kod = q_Poz_Miktar.L4_Kod

WHERE 

    t_Yrd_Analizler.A_Rayic_Tip = "1. Amortisman" 
    AND 
    t_Analizler.a_bV = ( SELECT t_Kabuller.ver_B FROM t_Kabuller )

ORDER BY 
    t_Analizler.A_L4_Kod;