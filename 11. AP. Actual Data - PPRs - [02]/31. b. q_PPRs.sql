
-- q_PPRs - 11.31.b


SELECT 
    
    sub_Kod             AS xls_Kod,
    #10/1/2023#         AS xls_Ay, 
    Sum( sub_Miktar )   AS xls_Miktar, 
    Sum( sub_Tutar )    AS xls_Tutar

FROM 
    q_PPRs_Sub

WHERE
    sub_Ay < #11/2/2023# 

GROUP BY
    sub_Kod


UNION


SELECT 
    
    sub_Kod AS xls_Kod,
    sub_Ay  AS xls_Ay,
    Sum( sub_Miktar )   AS xls_Miktar, 
    Sum( sub_Tutar )    AS xls_Tutar

FROM 
    q_PPRs_Sub

WHERE

    sub_Ay > #11/2/2023# 
    AND 
    sub_Ay < #5/1/2024#

GROUP BY

    sub_Kod,
    sub_Ay