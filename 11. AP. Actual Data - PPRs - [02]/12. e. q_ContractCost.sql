
-- q_ContractCost - 11.12.e


SELECT 

    t_Subcontractors.sc_Code            AS ccs_scCode, 
    t_Subcontractors.sc_Name            AS ccs_scName,   
    
    t_Contract_BoQs.boq_ctrCode         AS ccs_ctrCode, 
    t_Contracts.ctr_Desc                AS ccs_ctrDesc, 
    t_Contract_BoQs.boq_Code            AS ccs_boqCode, 
    Sum( t_Contract_BoQs.boq_Quantity ) AS css_ttlQuantity,
    
    t_PPR_Items.pit_UnitPrice           AS css_UnitPrice,
    css_ttlQuantity * css_UnitPrice     AS css_Cost,
    t_PPR_Items.pit_Desc                AS css_boqDesc
    
FROM 
    (
        t_Subcontractors 
        RIGHT JOIN 
        (
            t_Contract_BoQs 
            LEFT JOIN 
            t_Contracts 
            ON 
                t_Contract_BoQs.boq_ctrCode = t_Contracts.ctr_Code
        ) 
        ON 
            t_Subcontractors.sc_Code = t_Contracts.ctr_Subcon
    ) 
    LEFT JOIN 
    t_PPR_Items 
    ON 
        (t_Contract_BoQs.boq_Code = t_PPR_Items.pit_Code) 
        AND 
        (t_Contract_BoQs.boq_ctrCode = t_PPR_Items.pit_ctr_Code)

GROUP BY 
    
    t_Subcontractors.sc_Code, 
    t_Subcontractors.sc_Name, 

    t_Contract_BoQs.boq_ctrCode, 
    t_Contracts.ctr_Desc, 
    t_Contract_BoQs.boq_Code, 
    
    t_PPR_Items.pit_UnitPrice,
    t_PPR_Items.pit_Desc