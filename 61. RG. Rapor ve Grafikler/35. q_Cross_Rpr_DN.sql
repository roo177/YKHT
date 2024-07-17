
-- q_Cross_Rpr_DN - 51.35


TRANSFORM 

    IIf(IsNull(Sum([dgs_Tutar])),0,Sum([dgs_Tutar])) AS d_Ttr

SELECT 
    q_Rpr_DN.dgs_Kod

FROM 
    q_Rpr_DN

GROUP BY 
    q_Rpr_DN.dgs_Kod

PIVOT 
    q_Rpr_DN.dgs_Donem