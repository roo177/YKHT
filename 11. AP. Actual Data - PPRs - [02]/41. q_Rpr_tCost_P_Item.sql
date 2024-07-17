
-- q_Rpr_tCost_P_Item - 11.41


SELECT 

    DLookUp( "sc_Name", "t_Subcontractors", "sc_Code = '" & ctr_Subcon & "'" ) AS itm_SubconName,
    
    ppr_ctr_Code    AS itm_Ctr_Code,
    ppr_Date        AS itm_PPR_Date,
    pit_Code        AS itm_Code,
    pit_Desc        AS itm_Desc,
    
    ppr_Quantity    AS itm_Quantity,

    (
        t_PPR_Items.pit_UnitPrice *

        IIf( 

            DLookup( "ctr_Cur", "t_Contracts", "ctr_Code = '" & pit_ctr_Code & "'"  ) = "EUR", 

            DLookup( 
                "EUR", 
                "t_Endeks_Veri",
                "e_Ay = "   &   "#" & Format( ppr_Date, "mm"   ) & "/1" 
                            &   "/" & Format( ppr_Date, "yyyy" ) & "#" 
            ),  

            IIf( 
                
                DLookup( "ctr_Cur", "t_Contracts", "ctr_Code = '" & pit_ctr_Code & "'"  ) = "USD", 
                
                DLookup( 
                    "USD", 
                    "t_Endeks_Veri",
                    "e_Ay = "   &   "#" & Format( ppr_Date, "mm"    ) & "/1"  
                                &    "/" & Format( ppr_Date, "yyyy" ) & "#" 
                ),
                
                1
            )
        )
        *
        DLookup( 
            "FFK_AK", 
            "t_Escalation_Profiles", 
            "esc_Profile = '" & pit_Esca_Prmt & 
            "' AND g_Ay = "   & "#" & Format( ppr_Date, "mm"   ) & "/1"
                              & "/" & Format( ppr_Date, "yyyy" ) & "#" 
        )
    )
    AS itm_UP,

    itm_Quantity * itm_UP AS itm_Cost

FROM  
    (
        q_PPRs_Extract 
        LEFT JOIN 
        t_PPR_Items 
        ON 
            (q_PPRs_Extract.ppr_ctr_Code = t_PPR_Items.pit_ctr_Code) 
            AND 
            (q_PPRs_Extract.ppr_Code = t_PPR_Items.pit_Code)
    ) 
    LEFT JOIN t_Contracts 
    ON q_PPRs_Extract.ppr_ctr_Code = t_Contracts.ctr_Code

WHERE
    q_PPRs_Extract.ppr_Date < #5/1/2024#