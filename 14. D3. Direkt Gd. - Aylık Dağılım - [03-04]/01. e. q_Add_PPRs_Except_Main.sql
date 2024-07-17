
-- q_Add_PPRs_Except_Main - 14.01.e


INSERT INTO 

    a_t_Aylik_Mkt_Gider_Flat
    ( 
        L4_Kod, 
        Tarih, 
        Miktar 
    )

SELECT 

    t_PPR_Items.pit_CostCode, 
    t_PPRs_Except_Main.ppr_Date, 
    t_PPRs_Except_Main.ppr_Quantity

FROM 
    
    t_PPRs_Except_Main 
    LEFT JOIN 
    t_PPR_Items 
    ON 
        (t_PPRs_Except_Main.ppr_Code = t_PPR_Items.pit_Code) 
        AND 
        (t_PPRs_Except_Main.ppr_ctr_Code = t_PPR_Items.pit_ctr_Code)