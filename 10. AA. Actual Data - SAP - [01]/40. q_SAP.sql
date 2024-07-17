
-- q_SAP - 10.40


SELECT 

    t_SAP_CCS_Pairing.ccs_Code  AS xls_Kod, 
    #10/1/2023#                 AS xls_Ay,
    1                           AS xls_Miktar, 
    Sum( t_SAP_Data.sap_Cost )  AS xls_Tutar

FROM 

    t_SAP_Data 
    LEFT JOIN 
    t_SAP_CCS_Pairing 
    ON 
        (t_SAP_Data.sap_Mtr_Code = t_SAP_CCS_Pairing.mtr_Code) 
        AND 
        (t_SAP_Data.sap_Code = t_SAP_CCS_Pairing.fin_Code)

WHERE
    t_SAP_Data.sap_Month <= #10/1/2023#

GROUP BY
    t_SAP_CCS_Pairing.ccs_Code


UNION ALL


SELECT 

    t_SAP_CCS_Pairing.ccs_Code  AS xls_Kod, 
    t_SAP_Data.sap_Month        AS xls_Ay,
     
    1                   AS xls_Miktar, 
    t_SAP_Data.sap_Cost AS xls_Tutar

FROM 

    t_SAP_Data 
    LEFT JOIN 
    t_SAP_CCS_Pairing 
    ON 
        (t_SAP_Data.sap_Mtr_Code = t_SAP_CCS_Pairing.mtr_Code) 
        AND 
        (t_SAP_Data.sap_Code = t_SAP_CCS_Pairing.fin_Code)

WHERE
    t_SAP_Data.sap_Month > #10/1/2023# 