
-- q_Miktar_Ihzarat - 71.02


SELECT 

    t_Hakedisler.Hk_No, 
    
    q_Aylik_Mkt_Ihzarat.ihz_Kod     AS AYGM_Poz, 
    q_Aylik_Mkt_Ihzarat.ihz_Tip     AS Ihzarat_Tip, 
    q_Aylik_Mkt_Ihzarat.ihz_Miktar  AS Miktar

FROM 

    t_Hakedisler 
    LEFT JOIN 
    q_Aylik_Mkt_Ihzarat 
    ON 
        t_Hakedisler.Hk_Tarih = q_Aylik_Mkt_Ihzarat.ihz_Tarih

ORDER BY 

    t_Hakedisler.Hk_No, 
    q_Aylik_Mkt_Ihzarat.ihz_Kod, 
    q_Aylik_Mkt_Ihzarat.ihz_Tip