
-- q_SAP_Subcon_Cost - 11.51


SELECT 
    
    t_SAP_Cost_Codes.sap_C_Code AS ssc_Code, 
    t_SAP_Cost_Codes.sap_C_Desc AS ssc_Desc, 
    
    Sum( t_SAP_Data.sap_Cost )  AS ssc_Cost

FROM 

    t_SAP_Cost_Codes 
    LEFT JOIN 
    t_SAP_Data 
    ON
        t_SAP_Cost_Codes.sap_C_Code = t_SAP_Data.sap_Code

GROUP BY 
    
    t_SAP_Cost_Codes.sap_C_Code, 
    t_SAP_Cost_Codes.sap_C_Desc, 
    t_SAP_Cost_Codes.bln_scRel

HAVING

    Sum( t_SAP_Data.sap_Cost ) Is Not Null 
    AND 
    t_SAP_Cost_Codes.bln_scRel
