
-- q_ContractPPR_Diff - 11.12


SELECT 

    t_Subcontractors.sc_Code    AS dff_scCode, 
    t_Subcontractors.sc_Name    AS dff_scName,
    
    t_PPR_Items.pit_ctr_Code    AS dff_ctrCode, 
    t_Contracts.ctr_Desc        AS dff_ctrDesc, 
    
    t_PPR_Items.pit_Code        AS dff_pitCode,   
    t_PPR_Items.pit_Desc        AS dff_pitDesc, 


    IIf( IsNull( q_ContractCost.css_ttlQuantity ), 0, q_ContractCost.css_ttlQuantity ) AS dff_Q_Contract, 
    IIf( IsNull( q_PPRs_Plain.ppp_Quantity      ), 0, q_PPRs_Plain.ppp_Quantity      ) AS dff_Q_PPR,

    IIf( 
        IsNull( q_ContractCost.css_ttlQuantity ), 
        0, 
        dff_Q_Contract - dff_Q_PPR 
    ) 
    AS 
    dff_Q_Diff,


    IIf( IsNull( q_ContractCost.css_Cost ), 0, q_ContractCost.css_Cost ) AS dff_Cost_Contract, 
    IIf( IsNull( q_PPRs_Plain.ppp_Cost   ), 0, q_PPRs_Plain.ppp_Cost   ) AS dff_Cost_PPR,

    IIf( 
        IsNull( q_ContractCost.css_Cost ), 
        0, 
        dff_Cost_Contract - dff_Cost_PPR 
    ) 
    AS 
    dff_Cost_Diff

FROM 

    t_Subcontractors 
    RIGHT JOIN 
    (   
        t_Contracts 
        RIGHT JOIN 
        (
            (
                t_PPR_Items 
                LEFT JOIN 
                q_ContractCost 
                ON 
                    (t_PPR_Items.pit_Code = q_ContractCost.ccs_boqCode) 
                    AND 
                    (t_PPR_Items.pit_ctr_Code = q_ContractCost.ccs_ctrCode)
            ) 
            LEFT JOIN 
            q_PPRs_Plain 
            ON 
                (t_PPR_Items.pit_Code = q_PPRs_Plain.ppp_pitCode) 
                AND 
                (t_PPR_Items.pit_ctr_Code = q_PPRs_Plain.ppp_ctrCode)
        ) 
        ON 
            t_Contracts.ctr_Code = t_PPR_Items.pit_ctr_Code
    ) 
    ON 
        t_Subcontractors.sc_Code = t_Contracts.ctr_Subcon;

