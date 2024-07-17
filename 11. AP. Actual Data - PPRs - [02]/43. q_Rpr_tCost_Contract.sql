
-- q_Rpr_tCost_Contract - 11.43


SELECT 
    
    itm_SubconName  AS ctr_SubconName, 
    itm_Ctr_Code    AS ctr_Code,
    Sum( itm_Cost ) AS ctr_Cost

FROM 
    q_Rpr_tCost_P_Item

GROUP BY 
    
    itm_SubconName, 
    itm_Ctr_Code

ORDER BY 
    
    itm_SubconName, 
    itm_Ctr_Code 