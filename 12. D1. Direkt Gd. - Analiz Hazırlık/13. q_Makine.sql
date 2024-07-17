
-- q_Makine - 12.13
-- IIf( Sum( adet_E ) = 0, 0 kısımları 0'a bölümden gelecek hata için

SELECT 
    
    L3_R_Kod,

    Sum( amr_Miktar * mkk_bln_Ana * (-1) ) AS adet_M,

    Sum( a_ttr_Amr_Baz ) AS ttr_Amr_Baz,
    
    IIf( 
            Sum( adet_E ) = 0, 0,
            Round( Sum( a_BF_Yakit * adet_E ) / Sum( adet_E ), 2 )
    ) 
    AS BF_Yakit,

    IIf( 
            Sum( adet_E ) = 0, 0,
            Round(  
                    Sum( a_ttr_Sa_Bkm_Yag * adet_E ) / Sum( adet_E ) +
                    Sum( a_ttr_Sa_Bkm_Drk * amr_Miktar ) / Sum( amr_Miktar )
            , 2 )
    )
    AS ttr_Sa_Bakim,

    IIf( 
            Sum( adet_E ) = 0, 0,
            Round( 
                    Sum( a_tpl_Bkm_Yag * adet_E   ) / Sum( adet_E   ) + 
                    Sum( a_tpl_Bkm_Drk * amr_Miktar ) / Sum( amr_Miktar )
            , 2 )
    ) 
    AS tpl_Bkm_Yag,

    IIf(
            Sum( adet_E ) = 0, 0,
            Round( Sum( a_ttr_Ykt_MakAy * adet_E ) / Sum( adet_E ), 2 )
    )
    AS ttr_Ykt_MakAy,

    IIf(
            Sum( adet_E ) = 0, 0,
            Round( Sum( a_ttr_Opr_AdmAy * adet_E ) / Sum( adet_E ), 2 )
    )
    AS ttr_Opr_AdmAy,

    ttr_Opr_AdmAy / 
    ( DLookup( "g_Aylik_Calisma_Gunu", "t_Kabuller" ) * DLookup( "a_Gnlk_Cals_Saat", "t_Kabuller" ) )
    AS ttr_Opr_AdmSaat,

    M_L4_Opr AS kod_Operator

FROM (

    SELECT

        L3_R_Kod,
        amr_Miktar,
        mkk_bln_Ana,
        mkk_bln_Enr,
        a_ttr_Amr_Baz,
        a_BF_Yakit,
        a_ttr_Sa_Bkm_Yag,
        a_ttr_Sa_Bkm_Drk,
        a_tpl_Bkm_Yag,
        a_tpl_Bkm_Drk,
        a_ttr_Ykt_MakAy,
        a_ttr_Opr_AdmAy,
        M_L4_Opr,
        amr_Miktar * mkk_bln_Enr * (-1) AS adet_E

    FROM q_Makine_Alt

) AS Subquery

GROUP BY 
    L3_R_Kod,
    M_L4_Opr