
-- q_Pozlar_T3 - 03.11


SELECT 
    
    k_Pozlar_T3.T3_Kod, 
    k_Pozlar_T3.L2_Kod, 

    IIf( 
        Len( t_Subcontractors.sc_Name & " - " & t_Contracts.ctr_Desc ) = 3,
        L3_Aciklama,
        t_Subcontractors.sc_Name & " - " & t_Contracts.ctr_Desc
    ) 
    AS T3_Desc

FROM 
    (
        t_Subcontractors 
        RIGHT JOIN 
        (
            k_Pozlar_T3 
            LEFT JOIN 
            t_Contracts 
            ON 
                k_Pozlar_T3.T_UzunKod = t_Contracts.ctr_Code
        ) 
        ON 
            t_Subcontractors.sc_Code = t_Contracts.ctr_Subcon
    ) 
    LEFT JOIN 
    k_Pozlar_L3 
    ON 
        k_Pozlar_T3.T3_Kod = k_Pozlar_L3.L3_Kod