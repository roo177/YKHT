
-- q_PPRs_Plain - 11.30


SELECT 

    t_Subcontractors.sc_Code    AS ppp_scCode, 
    t_Subcontractors.sc_Name    AS ppp_scName,

    t_Contracts.ctr_Code        AS ppp_ctrCode,    
    t_Contracts.ctr_Desc        AS ppp_ctrDesc,

    t_PPR_Items.pit_Code        AS ppp_pitCode, 
    t_PPR_Items.pit_Desc        AS ppp_pitDesc,

    Sum ( q_PPRs_Extract.ppr_Quantity ) AS ppp_Quantity,
    t_PPR_Items.pit_UnitPrice   AS ppp_pitUP,
    ppp_Quantity * ppp_pitUP    AS ppp_Cost

FROM 

    t_PPR_Items 
    RIGHT JOIN 
    (
        q_PPRs_Extract 
        LEFT JOIN 
        (
            t_Subcontractors 
            RIGHT JOIN 
            t_Contracts 
            ON 
                t_Subcontractors.sc_Code = t_Contracts.ctr_Subcon
        ) 
        ON 
            q_PPRs_Extract.ppr_ctr_Code = t_Contracts.ctr_Code
    ) 
    ON 
        (t_PPR_Items.pit_Code = q_PPRs_Extract.ppr_Code) 
        AND 
        (t_PPR_Items.pit_ctr_Code = q_PPRs_Extract.ppr_ctr_Code)

GROUP BY

    t_Subcontractors.sc_Code,    
    t_Subcontractors.sc_Name,   

    t_Contracts.ctr_Code,   
    t_Contracts.ctr_Desc,       

    t_PPR_Items.pit_Code,       
    t_PPR_Items.pit_Desc,
    t_PPR_Items.pit_UnitPrice       