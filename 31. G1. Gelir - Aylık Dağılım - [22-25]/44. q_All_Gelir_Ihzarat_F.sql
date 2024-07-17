
-- q_All_Gelir_Ihzarat_F - 31.44


SELECT 

    L4_Kod              AS gIhz_Poz, 
    ihz_Tarih           AS gIhz_Ay, 
    1                   AS gIhz_Miktar, 

    Sum(    ihz_Miktar * L4_BF_DG * 
            IIf( ihz_Tip = "1. Sipariş",    Siparis, 
            IIf( ihz_Tip = "2. Sevk",       Sevk, 
            IIf( ihz_Tip = "3. Teslim",     Teslim, 
                                            Geri 
            )))
    ) 
    AS gIhz_Tutar

FROM 
    ( 
        q_Aylik_Mkt_Ihzarat 
        LEFT JOIN 
        k_Pozlar_L4 ON q_Aylik_Mkt_Ihzarat.ihz_Kod = k_Pozlar_L4.AYGM_Poz 
    ) 
    LEFT JOIN 
    t_Ihzarat ON q_Aylik_Mkt_Ihzarat.ihz_Kod = t_Ihzarat.AYGM_Poz

GROUP BY

    L4_Kod,
    ihz_Tarih, 
    L4_BF_DG

ORDER BY 
    q_Aylik_Mkt_Ihzarat.ihz_Tarih;