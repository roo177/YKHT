
-- q_All_Gelir_FF - 31.46.a


INSERT INTO 

    t_Excel_Aylik 
    ( 
        xls_Kod,
        xls_From, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 

    "C-1.FFK-01.GNL-001" AS ff_Kod,
    "q_All_Gelir_FF"     AS ff_From,
    ffa_Ay               AS ff_Ay,
    1                    AS ff_Miktar,
    Sum( ffa_Tutar )     AS ff_Tutar

FROM        

    q_All_Gelir_FF_alt,
    t_Kabuller

GROUP BY
    ffa_Ay