
-- q_Rpr_tCost_Subcon - 11.44


SELECT 
    
    sc_Code         AS scn_Code,
    itm_SubconName  AS scn_Name, 
    Sum( itm_Cost ) AS scn_Cost

FROM 
    q_Rpr_tCost_P_Item 
    LEFT JOIN 
    t_Subcontractors 
        ON q_Rpr_tCost_P_Item.itm_SubconName = t_Subcontractors.sc_Name

GROUP BY 

    sc_Code, 
    itm_SubconName

ORDER BY 
    Sum( itm_Cost ) DESC