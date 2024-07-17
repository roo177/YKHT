
-- q_All_SAP_RB - 10.61.b


INSERT INTO

    t_Excel_Aylik_RB 
    ( 
        xls_Kod, 
        xls_From, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar
    )

SELECT 
    
    xls_Kod             AS sap_Code, 
    "q_All_SAP_RB"      AS sap_From,
    
    IIf( 
        xls_Ay <> #10/1/2023#,
        DateAdd( "m", -1, xls_Ay ),
        xls_Ay
    )  
                        AS sap_Date,

    xls_Miktar          AS sap_Qnty,
    - Sum( xls_Tutar )  AS sap_Cost


FROM 
    q_SAP

GROUP BY

    xls_Kod,
    xls_Ay,
    xls_Miktar

ORDER BY 

    xls_Ay  DESC,    
    xls_Kod ASC
