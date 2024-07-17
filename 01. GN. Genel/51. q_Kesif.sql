
-- q_Kesif - 01.51


SELECT 
    
    Replace(L2_Aciklama,"GELİR - ","") AS poz_Grup, 
    k_Pozlar_L4.L4_Kod, 
    k_Pozlar_L4.AYGM_Poz, 
    k_Pozlar_L4.L4_BF_DG, 
    k_Pozlar_L4.L4_Birim, 
    k_Pozlar_L2.L2_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa, 
    
    Sum( k_Pozlar_L4.L4_MK_KS ) AS ksf_Miktar, 
    Sum( L4_BF_DG * L4_MK_KS ) AS k_Tutar, 
    Sum( ( Nz( tpl_Miktar ) - L4_MK_KS ) / L4_MK_KS ) AS Fark, 
    Sum( Nz( tpl_Miktar )) AS rev_Miktar, 
    Sum( L4_BF_DG * Nz( tpl_Miktar ) ) AS r_Tutar

FROM 
    (
        k_Pozlar_L2 
        RIGHT JOIN 
        (
            k_Pozlar_L3 
            RIGHT JOIN k_Pozlar_L4 
            ON k_Pozlar_L3.L3_Kod = k_Pozlar_L4.L3_Kod
        ) 
        ON k_Pozlar_L2.L2_Kod = k_Pozlar_L3.L2_Kod
    ) 
    LEFT JOIN 
    q_Poz_Miktar 
    ON k_Pozlar_L4.L4_Kod = q_Poz_Miktar.L4_Kod

GROUP BY 
    
    Replace(L2_Aciklama,"GELİR - ",""), 
    k_Pozlar_L4.L4_Kod, 
    k_Pozlar_L4.AYGM_Poz, 
    k_Pozlar_L4.L4_BF_DG, 
    k_Pozlar_L4.L4_Birim, 
    k_Pozlar_L2.L2_Kod, 
    k_Pozlar_L4.L4_Ack_Kisa

HAVING 

    ( Sum(k_Pozlar_L4.L4_MK_KS) ) <> 0;
