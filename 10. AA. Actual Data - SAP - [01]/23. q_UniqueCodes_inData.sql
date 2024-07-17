
-- q_UniqueCodes_inData - 10.23


SELECT 
    t_SAP_Data.sap_Code, 
    t_SAP_Data.sap_Mtr_Code

FROM 
    t_SAP_Data

GROUP BY 
    t_SAP_Data.sap_Code, 
    t_SAP_Data.sap_Mtr_Code;