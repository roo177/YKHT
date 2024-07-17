
-- q_PPRs_Extract - 11.14


SELECT 

    t_PPR_Items.pit_ctr_Code        AS ppr_ctr_Code,
    a_t_Aylik_Mkt_Gider_Flat.Tarih  AS ppr_Date, 
    t_PPR_Items.pit_Code            AS ppr_Code, 
    a_t_Aylik_Mkt_Gider_Flat.Miktar AS ppr_Quantity         

FROM 
    
    a_t_Aylik_Mkt_Gider_Flat 
    LEFT JOIN 
    t_PPR_Items 
    ON 
        a_t_Aylik_Mkt_Gider_Flat.L4_Kod = t_PPR_Items.pit_CostCode

WHERE 

    t_PPR_Items.pit_ctr_Code Is Not Null
    AND
    a_t_Aylik_Mkt_Gider_Flat.Tarih <= DLookup( "a_SonFinGrcAy", "t_Kabuller"  )