
-- q_Endeks - 09.03


SELECT 
    
    t_Aylar_FF.g_Ay, 

    Round( 

        IIf( IsNull( b01_TUFE ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b01_TUFE ) FROM t_Endeks_Veri ) * kum_TUFE,

                    ( SELECT Max( b01_TUFE ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b01_TUFE )  FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b01_TUFE )  FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*) FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b01_TUFE ) FROM t_Endeks_Veri )
            ),
            b01_TUFE
        )
        , 2 
    ) 
    AS h01_TUFE,


    Round( 

        IIf( IsNull( b02_Min_Urn ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b02_Min_Urn ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b02_Min_Urn ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b02_Min_Urn ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b02_Min_Urn ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)   FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b02_Min_Urn ) FROM t_Endeks_Veri )
            ),
            b02_Min_Urn
        )
        , 2 
    ) 
    AS h02_Min_Urn,


    Round( 

        IIf( IsNull( b03_Ana_Metal ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b03_Ana_Metal ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b03_Ana_Metal ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b03_Ana_Metal ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b03_Ana_Metal ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)     FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b03_Ana_Metal ) FROM t_Endeks_Veri )
            ),
            b03_Ana_Metal
        )
        , 2 
    ) 
    AS h03_Ana_Metal,


    Round( 

        IIf( IsNull( b04_Deg_AnM ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b04_Deg_AnM ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b04_Deg_AnM ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b04_Deg_AnM ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b04_Deg_AnM ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)   FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b04_Deg_AnM ) FROM t_Endeks_Veri )
            ),
            b04_Deg_AnM
        )
        , 2 
    ) 
    AS h04_Deg_AnM,


    Round( 

        IIf( IsNull( b05_Raf_PtU ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b05_Raf_PtU ) FROM t_Endeks_Veri ) * kum_USD,

                    ( SELECT Max( b05_Raf_PtU ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b05_Raf_PtU ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b05_Raf_PtU ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)   FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b05_Raf_PtU ) FROM t_Endeks_Veri )
            ),
            b05_Raf_PtU
        )
        , 2 
    ) 
    AS h05_Raf_PtU,


    Round( 

        IIf( IsNull( b06_Amu_Mbh ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b06_Amu_Mbh ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b06_Amu_Mbh ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b06_Amu_Mbh ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b06_Amu_Mbh ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)   FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b06_Amu_Mbh ) FROM t_Endeks_Veri )
            ),
            b06_Amu_Mbh
        )
        , 2 
    ) 
    AS h06_Amu_Mbh,


    Round( 

        IIf( IsNull( b07_EJT_EDK ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b07_EJT_EDK ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b07_EJT_EDK ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b07_EJT_EDK ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b07_EJT_EDK ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)   FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b07_EJT_EDK ) FROM t_Endeks_Veri )
            ),
            b07_EJT_EDK
        )
        , 2 
    ) 
    AS h07_EJT_EDK,


    Round( 

        IIf( IsNull( b08_Blg_Cbr ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b08_Blg_Cbr ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b08_Blg_Cbr ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b08_Blg_Cbr ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b08_Blg_Cbr ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)   FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b08_Blg_Cbr ) FROM t_Endeks_Veri )
            ),
            b08_Blg_Cbr
        )
        , 2 
    ) 
    AS h08_Blg_Cbr,  


    Round( 

        IIf( IsNull( b09_UFE ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b09_UFE ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b09_UFE ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b09_UFE )   FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b09_UFE )   FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*) FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b09_UFE ) FROM t_Endeks_Veri )
            ),
            b09_UFE
        )
        , 2 
    ) 
    AS h09_UFE,  


    Round( 

        IIf( IsNull( b10_ME_BYS ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    ( SELECT Max( b10_ME_BYS ) FROM t_Endeks_Veri ) * kum_UFE,

                    ( SELECT Max( b10_ME_BYS ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( b10_ME_BYS ) FROM t_Endeks_Veri ) / 
                                ( SELECT Min( b10_ME_BYS ) FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*)  FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( b10_ME_BYS ) FROM t_Endeks_Veri )
            ),
            b10_ME_BYS
        )
        , 2 
    ) 
    AS h10_ME_BYS,  


    Round( 

        IIf( IsNull( EUR ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    man_EUR,

                    ( SELECT Max( EUR ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( EUR )       FROM t_Endeks_Veri ) / 
                                ( SELECT Min( EUR )       FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*) FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( EUR ) FROM t_Endeks_Veri )
            ),
            EUR
        )
        , 4 
    ) 
    AS h_EUR, 


    Round( 

        IIf( IsNull( USD ),

            IIf( DLookup( "bln_Eskalasyon", "t_Kabuller" ),

                IIf( DLookup( "b_Trend_Man", "t_Kabuller" ),

                    man_USD,

                    ( SELECT Max( USD ) FROM t_Endeks_Veri ) *
                    (
                        (
                            ( 
                                ( SELECT Max( USD )       FROM t_Endeks_Veri ) / 
                                ( SELECT Min( USD )       FROM t_Endeks_Veri )
                            ) ^ ( 1 / ( ( SELECT Count(*) FROM t_Endeks_Veri ) - 1 ) ) 

                        ) ^ ( DateDiff( 'm', #10-01-2023#, t_Aylar_FF.g_Ay ) - ( SELECT Count(*) FROM t_Endeks_Veri ) + 1 )
                    )
                ),
                ( SELECT Max( USD ) FROM t_Endeks_Veri )
            ),
            USD
        )
        , 4 
    ) 
    AS h_USD


FROM 
    (
        t_Aylar_FF 
        LEFT JOIN 
        t_Endeks_Veri ON t_Aylar_FF.g_Ay = t_Endeks_Veri.e_Ay
    ) 
    LEFT JOIN t_VBA_Man_Tah_Kum 
    ON t_Aylar_FF.g_Ay = t_VBA_Man_Tah_Kum.kum_Ay

ORDER BY 
    t_Aylar_FF.g_Ay