
-- q_Miktar_Imalat - 71.01


SELECT 
    
    t_Hakedisler.Hk_No, 
    
    q_Aylik_Mkt_Gelir.AYGM_Poz, 
    q_Aylik_Mkt_Gelir.glr_Miktar AS Miktar

FROM 

    t_Hakedisler 
    LEFT JOIN 
    q_Aylik_Mkt_Gelir 
    ON 
        t_Hakedisler.Hk_Tarih = q_Aylik_Mkt_Gelir.glr_Ay

WHERE

    q_Aylik_Mkt_Gelir.AYGM_Poz Is Not Null
    AND 
    q_Aylik_Mkt_Gelir.glr_Ver = DLookup( "ver_B", "t_Kabuller" )

ORDER BY 
    t_Hakedisler.Hk_No, 
    q_Aylik_Mkt_Gelir.AYGM_Poz