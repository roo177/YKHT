
-- q_Missing_CodeMatch - 10.25


SELECT 

    q_Missing_CodeMatch_Sub.sap_Code, 
    q_Missing_CodeMatch_Sub.sap_Mtr_Code, 

    t_SAP_CCS_Pairing.ccs_Code,
    t_SAP_CCS_Pairing.mtr_Code

FROM 
    
    q_Missing_CodeMatch_Sub 
    LEFT JOIN 
    t_SAP_CCS_Pairing 
    ON 
        q_Missing_CodeMatch_Sub.sap_Code = t_SAP_CCS_Pairing.fin_Code

WHERE 
    t_SAP_CCS_Pairing.mtr_Code <> "KNS"


UNION

SELECT 
    
    t_SAP_Data.sap_Code,
    t_SAP_Data.sap_Mtr_Code, 
    t_SAP_CCS_Pairing.fin_Code, 
    t_SAP_CCS_Pairing.mtr_Code

FROM 
    
    t_SAP_Data 
    LEFT JOIN 
    t_SAP_CCS_Pairing 
    ON 
        t_SAP_Data.sap_Code = t_SAP_CCS_Pairing.fin_Code
    
GROUP BY 
    
    t_SAP_Data.sap_Code, 
    t_SAP_Data.sap_Mtr_Code, 
    t_SAP_CCS_Pairing.fin_Code, 
    t_SAP_CCS_Pairing.mtr_Code

HAVING t_SAP_CCS_Pairing.fin_Code Is Null
