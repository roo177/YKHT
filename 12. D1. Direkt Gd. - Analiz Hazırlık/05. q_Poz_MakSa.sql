
-- q_Poz_MakSa - 12.05
-- A_Rayic_Tip'i Left( t_Analizler.A_L3_R_Kod, 4) = "1_MK" ile değiştirme, aynı değil ( Yakıt yüzünden )

SELECT 

    t_Analizler.A_L4_Kod, 
    t_Analizler.A_L3_R_Kod, 
    t_Analizler.A_Rayic_Tip, 
    
    Round( A_P1_Dgr / A_P3_Dgr, 6 )             AS Birim_Saat, 
    q_Poz_Miktar_Kns.kns_Mkt                    AS Imalat_Miktar, 
    Round( A_P1_Dgr / A_P3_Dgr * kns_Mkt , 2)   AS Poz_Mak_Sa

FROM 
    t_Analizler
    LEFT JOIN 
    q_Poz_Miktar_Kns 
    ON t_Analizler.A_L4_Kod = q_Poz_Miktar_Kns.kns_Kod

WHERE 
    t_Analizler.A_Rayic_Tip = "1. Amortisman" AND A_bV = DLookup( "ver_B", "t_Kabuller" )

ORDER BY 
    t_Analizler.A_L3_R_Kod;
