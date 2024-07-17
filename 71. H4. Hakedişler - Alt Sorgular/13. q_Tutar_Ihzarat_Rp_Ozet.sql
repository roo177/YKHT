
-- q_Tutar_Ihzarat_Rp_Ozet - 71.13


SELECT 
    
    AYGM_Poz, 
    Tip, 
    L4_Açk_Kısa, 
    L4_Birim, 
    Hk_No, 
    
    Sum( Tpl_Tutar ) AS ttr_Ozet

FROM q_Tutar_Ihzarat_Rp

GROUP BY 

    AYGM_Poz, 
    Tip, 
    L4_Açk_Kısa,
    L4_Birim,
    Hk_No;
