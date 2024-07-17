
-- q_All_IncomeTax_RB - 28.11.b


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

    "E-7.FIN-20.VGR-010"    AS x_Kod,
    "q_All_IncomeTax_RB"    AS x_From,
    #12/1/2028#             AS x_Ay,
    1                       AS x_Miktar, 
    Sum( xls_Tutar * 0.2 )  AS x_Tutar

FROM 
    
    k_Pozlar_L4 
    RIGHT JOIN 
    t_Excel_Aylik_RB 
    ON 
        k_Pozlar_L4.L4_Kod = t_Excel_Aylik_RB.xls_Kod

GROUP BY 

    t_Excel_Aylik_RB.xls_Ay,
    k_Pozlar_L4.bln_Tax

HAVING 

    k_Pozlar_L4.bln_Tax