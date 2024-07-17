
-- q_Missing_CodeMatch_Sub - 10.24


SELECT 

    q_UniqueCodes_inData.sap_Code, 
    q_UniqueCodes_inData.sap_Mtr_Code

FROM 
    q_UniqueCodes_inData

WHERE 
    
    NOT EXISTS (

        SELECT 1
        FROM
            t_SAP_CCS_Pairing
        WHERE
            (
                t_SAP_CCS_Pairing.fin_Code = q_UniqueCodes_inData.sap_Code
                AND
                t_SAP_CCS_Pairing.mtr_Code = q_UniqueCodes_inData.sap_Mtr_Code
            )
    )