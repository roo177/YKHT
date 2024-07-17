
-- q_Rpr_tCost_PPR - 11.42


SELECT 
    
    itm_SubconName  AS ppr_SubconName, 
    itm_Ctr_Code    AS ppr_Ctr_Code,
    itm_PPR_Date    AS ppr_Date,

    Sum( itm_Cost ) AS ppr_Cost

FROM 
    q_Rpr_tCost_P_Item

GROUP BY 
    
    itm_SubconName, 
    itm_Ctr_Code, 
    itm_PPR_Date

ORDER BY 
    
    itm_SubconName, 
    itm_Ctr_Code 