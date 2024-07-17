
-- q_Mak_Nakit.sql - 04.51


SELECT 

    IIf( 
        DLookup( "mak_bln_Nkt", "t_Mak_Gen_Data", "mak_Kod = '" & q_All_Codes_And_Months.kns_Kod & "'" ), 
        Replace( k_Rayicler_L3.L3_R_PozL4, "MLS", "MNK" ),
        k_Rayicler_L3.L3_R_PozL4
    )    
    AS nkt_Kod, 

    q_All_Codes_And_Months.kns_Kod AS nkt_Mak_Kod, 
    q_All_Codes_And_Months.kns_Trh AS nkt_Trh,

    IIf( IsNull( q_Mak_Taksit_Kns.kns_Tutar ), 0, q_Mak_Taksit_Kns.kns_Tutar ) AS nkt_Taksit,
    IIf( IsNull( q_Mak_Fatura_Kns.kns_Tutar ), 0, q_Mak_Fatura_Kns.kns_Tutar ) AS nkt_Fatura,
    IIf( IsNull( q_Mak_Saha_Kns.kns_Tutar   ), 0, q_Mak_Saha_Kns.kns_Tutar   ) AS nkt_Saha,

    nkt_Fatura + nkt_Saha + nkt_Taksit AS nkt_Ttr

FROM 
    (
        (
            (
                (
                    q_All_Codes_And_Months 
                    LEFT JOIN 
                    q_Mak_Fatura_Kns 
                    ON 
                        (q_All_Codes_And_Months.kns_Trh = q_Mak_Fatura_Kns.kns_Trh) 
                        AND 
                        (q_All_Codes_And_Months.kns_Kod = q_Mak_Fatura_Kns.kns_Kod)
                ) 
                LEFT JOIN 
                q_Mak_Saha_Kns 
                ON 
                    (q_All_Codes_And_Months.kns_Trh = q_Mak_Saha_Kns.kns_Trh) 
                    AND 
                    (q_All_Codes_And_Months.kns_Kod = q_Mak_Saha_Kns.kns_Kod)
            ) 
            LEFT JOIN 
            q_Mak_Taksit_Kns 
                ON 
                    (q_All_Codes_And_Months.kns_Trh = q_Mak_Taksit_Kns.kns_Trh) 
                    AND 
                    (q_All_Codes_And_Months.kns_Kod = q_Mak_Taksit_Kns.kns_Kod)
        )
        LEFT JOIN 
        t_Makine 
        ON 
            q_All_Codes_And_Months.kns_Kod = t_Makine.L4_R_Kod
    ) 
    LEFT JOIN 
    k_Rayicler_L3 
    ON 
        t_Makine.L3_R_Kod = k_Rayicler_L3.L3_R_Kod
