
-- q_PPR_Items - 11.13

SELECT 

    t_Contracts.ctr_CoO, 
    t_Contracts.ctr_DCO_No, 

    t_PPR_Items.pit_ctr_Code, 
    t_PPR_Items.pit_Code, 
    t_PPR_Items.pit_Desc, 
    t_PPR_Items.pit_CostCode, 
    
    t_Subcontractors.sc_Name

FROM 
    (
        t_PPR_Items 
        LEFT JOIN 
        t_Contracts 
        ON 
            t_PPR_Items.pit_ctr_Code = t_Contracts.ctr_Code
    ) 
    LEFT JOIN 
    t_Subcontractors 
    ON 
        t_Contracts.ctr_Subcon = t_Subcontractors.sc_Code;