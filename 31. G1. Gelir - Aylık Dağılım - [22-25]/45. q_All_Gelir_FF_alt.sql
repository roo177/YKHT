
-- q_All_Gelir_FF_alt - 31.45


SELECT 

    join_Ay     AS ffa_Ay,
    join_Poz    AS ffa_Poz,

    gIml_Tutar  AS ffa_Iml_Tutar,
    gIhz_Tutar  AS ffa_Ihz_Tutar,

    IIf( IsNull( gIml_Tutar ), 0, gIml_Tutar ) + 
    IIf( IsNull( gIhz_Tutar ), 0, gIhz_Tutar ) AS ffa_Tpl_Gelir,

    FFK_AK      AS ffa_Kats,

    ffa_Tpl_Gelir * ( ffa_Kats - 1 ) * IIf( join_Ay > #12/31/2024#, 0.9, 1 ) AS ffa_Tutar

FROM 
    (
        (
            q_Iml_Ihz_Birlesim 
            LEFT JOIN 
            q_All_Gelir_Ihzarat_F 
                ON 
                ( q_Iml_Ihz_Birlesim.join_Ay = q_All_Gelir_Ihzarat_F.gIhz_Ay ) 
                AND 
                ( q_Iml_Ihz_Birlesim.join_Poz = q_All_Gelir_Ihzarat_F.gIhz_Poz )
        ) 
        LEFT JOIN 
        q_All_Gelir_Imalat_F 
            ON 
            ( q_Iml_Ihz_Birlesim.join_Ay = q_All_Gelir_Imalat_F.gIml_Ay ) 
            AND 
            ( q_Iml_Ihz_Birlesim.join_Poz = q_All_Gelir_Imalat_F.gIml_Poz )
    ) 
    LEFT JOIN 
    q_Art_Kts 
        ON 
        q_Iml_Ihz_Birlesim.join_Ay = q_Art_Kts.g_Ay