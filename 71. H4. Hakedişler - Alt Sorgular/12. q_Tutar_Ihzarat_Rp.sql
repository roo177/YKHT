
-- q_Tutar_Ihzarat_Rp - 71.12


SELECT 

    q_Miktar_Ihzarat.AYGM_Poz, 
    Replace( L2_Aciklama, "GELİR - ", "" ) AS Tip, 
    L4_Ack_Kisa, 
    k_Pozlar_L4.L4_Birim, 
    q_Miktar_Ihzarat.Ihzarat_Tip, 
    q_Miktar_Ihzarat.Hk_No, 
    Sum( q_Miktar_Ihzarat.Miktar ) AS Tpl_Miktar,

    Sum( 
        IIf( 
            Ihzarat_Tip = "1. Sipariş",

            Miktar * L4_BF_DG * Siparis,
            
            IIf( 
                Ihzarat_Tip = "2. Sevk", 
                Miktar * L4_BF_DG * Sevk,
                
                IIf( 
                    Ihzarat_Tip = "3. Teslim", 

                    Miktar * L4_BF_DG * Teslim, 
                    Miktar * L4_BF_DG * Geri
                )
            )
        )
    ) 
    AS Tpl_Tutar

FROM 
    (
        (
            k_Pozlar_L2 
            RIGHT JOIN 
            k_Pozlar_L3 
            ON 
                k_Pozlar_L2.L2_Kod = k_Pozlar_L3.L2_Kod
        ) 
        RIGHT JOIN
        (
            k_Pozlar_L4 
            RIGHT JOIN 
            q_Miktar_Ihzarat 
            ON 
                k_Pozlar_L4.AYGM_Poz = q_Miktar_Ihzarat.AYGM_Poz
        ) 
        ON 
            k_Pozlar_L3.L3_Kod = k_Pozlar_L4.L3_Kod 
    ) 
    LEFT JOIN 
    t_Ihzarat 
    ON 
        q_Miktar_Ihzarat.AYGM_Poz = t_Ihzarat.AYGM_Poz

GROUP BY 

    q_Miktar_Ihzarat.AYGM_Poz, 
    Replace( L2_Aciklama, "GELİR - ","" ), 
    L4_Ack_Kisa, 
    k_Pozlar_L4.L4_Birim, 
    q_Miktar_Ihzarat.Ihzarat_Tip, 
    q_Miktar_Ihzarat.Hk_No;
