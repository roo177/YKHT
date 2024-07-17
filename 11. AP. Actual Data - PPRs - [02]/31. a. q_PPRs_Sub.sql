
-- q_PPRs_Sub - 11.31.a


SELECT 
    
    t_PPR_Items.pit_CostCode    AS sub_Kod,
    q_PPRs_Extract.ppr_Date     AS sub_Ay, 
    q_PPRs_Extract.ppr_Quantity AS sub_Miktar, 

    (
        (
            DLookup( 
                "FFK_AK", 
                "t_Escalation_Profiles", 
                "esc_Profile = '" & pit_Esca_Prmt & 
                "' AND g_Ay = "   & "#" & Format( ppr_Date, "mm"   ) & "/1"
                                  & "/" & Format( ppr_Date, "yyyy" ) & "#" 
            )
            - 1
        ) 
        * pit_Esca_B
    )
    + 1
    AS sub_esc_Coeff,

    (     
        t_PPR_Items.pit_UnitPrice *
        
        IIf( 

            DLookup( "ctr_Cur", "t_Contracts", "ctr_Code = '" & pit_ctr_Code & "'"  ) = "EUR", 

            DLookup( 
                "EUR", 
                "t_Endeks_Veri",
                "e_Ay = "   & "#" & Format( ppr_Date, "mm"   ) & "/1" 
                            & "/" & Format( ppr_Date, "yyyy" ) & "#" 
            ),  

            IIf( 
                
                DLookup( "ctr_Cur", "t_Contracts", "ctr_Code = '" & pit_ctr_Code & "'"  ) = "USD", 
                
                DLookup( 
                    "USD", 
                    "t_Endeks_Veri",
                    "e_Ay = "   & "#" & Format( ppr_Date, "mm"   ) & "/1" 
                                & "/" & Format( ppr_Date, "yyyy" ) & "#" 
                ),
                
                1
            )
        )
        *
        sub_esc_Coeff
    ) 
    AS sub_BF,

    sub_Miktar * sub_BF AS sub_Tutar

FROM 
    q_PPRs_Extract 
    LEFT JOIN 
    t_PPR_Items 
    ON 
        (q_PPRs_Extract.ppr_ctr_Code = t_PPR_Items.pit_ctr_Code) 
        AND 
        (q_PPRs_Extract.ppr_Code = t_PPR_Items.pit_Code)

WHERE
    q_PPRs_Extract.ppr_Date <= DLookup( "a_SonFinGrcAy", "t_Kabuller"  )