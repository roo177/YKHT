
-- q_Tutar_Imalat_Rp - 71.19


SELECT 

    q_Miktar_Imalat.Hk_No, 
    Replace( L2_Aciklama ,"GELİR - ","") AS Tip, 
    k_Pozlar_L4.AYGM_Poz, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    k_Pozlar_L4.L4_BF_DG, 
    Sum( q_Miktar_Imalat.Miktar ) AS Tpl_Miktar, 
    k_Pozlar_L4.L4_Birim, 
    Sum( Miktar * L4_BF_DG ) AS Tpl_Tutar

FROM
    
    (
        (
            k_Pozlar_L2 RIGHT JOIN k_Pozlar_L3 ON k_Pozlar_L2.L2_Kod = k_Pozlar_L3.L2_Kod
        ) 
        RIGHT JOIN k_Pozlar_L4 ON k_Pozlar_L3.L3_Kod = k_Pozlar_L4.L3_Kod
    ) 
    RIGHT JOIN q_Miktar_Imalat ON k_Pozlar_L4.AYGM_Poz = q_Miktar_Imalat.AYGM_Poz


GROUP BY 
    
    q_Miktar_Imalat.Hk_No, 
    Replace( L2_Aciklama ,"GELİR - ",""), 
    k_Pozlar_L4.AYGM_Poz, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    k_Pozlar_L4.L4_BF_DG, 
    k_Pozlar_L4.L4_Birim; 