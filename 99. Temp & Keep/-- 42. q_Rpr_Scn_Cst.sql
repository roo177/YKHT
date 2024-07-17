



-- q_Rpr_Scn_Qty - 51.41

TRANSFORM 

    Sum( ppr_Quantity )                 AS scn_Quantity,
    Sum( ppr_Quantity * pit_UnitPrice ) AS scn_Cost 

SELECT 
    
    t_Subcontractors.sc_Name, 
    t_Contracts.ctr_Desc, 
    t_PPR_Items.pit_Desc

FROM 
    
    t_PPR_Items 
    RIGHT JOIN 
    (
        (
            t_Subcontractors 
            LEFT JOIN 
            t_Contracts 
                ON t_Subcontractors.sc_Code = t_Contracts.ctr_Subcon
        ) 
        LEFT JOIN 
        q_PPRs_Extract 
            ON t_Contracts.ctr_Code = q_PPRs_Extract.ppr_ctr_Code
    ) 
    ON 
        (t_PPR_Items.pit_Code = q_PPRs_Extract.ppr_Code) 
        AND 
        (t_PPR_Items.pit_ctr_Code = q_PPRs_Extract.ppr_ctr_Code)

GROUP BY 

    t_Subcontractors.sc_Name, 
    t_Contracts.ctr_Desc, 
    t_PPR_Items.pit_Desc

PIVOT 

    FORMAT( q_PPRs_Extract.ppr_Date, 'yyyy - mmmm' )