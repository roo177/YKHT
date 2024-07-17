
-- q_All_Gelir_Ihzarat - 31.42.a


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

    'B' & MID( L4_Kod, 2 )  AS gIhz_Poz, 
    "q_All_Gelir_Ihzarat"   AS gIhz_From,
    ihz_Tarih               AS gIhz_Ay, 
    ihz_Miktar              AS gIhz_Miktar, 

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
        LEFT JOIN k_Pozlar_L4 ON q_Aylik_Mkt_Ihzarat.ihz_Kod = k_Pozlar_L4.AYGM_Poz
    ) 
    LEFT JOIN 
    t_Ihzarat ON q_Aylik_Mkt_Ihzarat.ihz_Kod = t_Ihzarat.AYGM_Poz

GROUP BY

    L4_Kod,
    ihz_Tarih,
    ihz_Miktar, 
    L4_BF_DG;