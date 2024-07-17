
-- q_Makine_Alt - 12.12
-- Multistep Ref to Last EUR Rate

SELECT

    t_Makine.L3_R_Kod,
    t_Makine.L4_R_Kod,

    amr_Miktar,
    mkk_bln_Ana,
    mkk_bln_Enr,

    DLookup( "g_Aylik_Calisma_Gunu", "t_Kabuller" ) AS kbl_Ayl_Cls_Gun,
    DLookup( "a_Gnlk_Cals_Saat",     "t_Kabuller" ) AS kbl_Gun_Cls_Saa,
    DLookup( "ver_B",                "t_Kabuller" ) AS kbl_Ver,

    DLookup( "ver_Ay", "t_Ver_Butce", "ver_Say = " &  kbl_Ver ) AS re_Ay,
    DLookup( 
        "h_EUR", 
        "q_Endeks", 
        "g_Ay = " & "#" & Format( re_Ay, "mm"   ) & "/1" & 
                    "/" & Format( re_Ay, "yyyy" ) & "#" ) AS re_rateEUR,

    DLookup( "F_BF", "t_R_Fiyatlar", "F_Kod = '3_ML-1000-5010' AND F_Ver = " &  kbl_Ver ) AS bf_Mazot,
    DLookup( "F_BF", "t_R_Fiyatlar", "F_Kod = '3_ML-1000-0020' AND F_Ver = " &  kbl_Ver ) AS bf_Elektrik,
    DLookup( "F_BF", "t_R_Fiyatlar", "F_Kod = '3_ML-1000-0040' AND F_Ver = " &  kbl_Ver ) AS bf_Yag,

    IIf( ET_Tip = "Mazot", bf_Mazot, IIf( ET_Tip = "Elektrik", bf_Elektrik ,0 ) ) AS a_BF_Yakit,

    amr_Tutar AS a_ttr_Amr_Baz, 

    Round( ET_Saat * o_Yag_Ykt * bf_Yag, 2 ) AS a_ttr_Sa_Bkm_Yag,

    Round( IIf(  t_Ydk_Drkt > 0, t_Ydk_Drkt, 0 ), 4 ) AS a_ttr_Sa_Bkm_Drk,

    a_ttr_Sa_Bkm_Yag * ( kbl_Ayl_Cls_Gun * kbl_Gun_Cls_Saa )  AS a_tpl_Bkm_Yag,
    a_ttr_Sa_Bkm_Drk * ( kbl_Ayl_Cls_Gun * kbl_Gun_Cls_Saa )  AS a_tpl_Bkm_Drk,

    // TODO: Check this formula

    ET_Saat * a_BF_Yakit * kbl_Ayl_Cls_Gun * kbl_Gun_Cls_Saa * V_Yzd AS a_ttr_Ykt_MakAy, 

    IIf( IsNull( q_Personel.p_Kod ), 0, q_Personel.p_Tpl_Maliyet ) AS a_ttr_Opr_AdmAy,

    M_L4_Opr

FROM 
    (
        t_Makine 
        LEFT JOIN 
        q_Personel ON t_Makine.M_L4_Opr = q_Personel.p_Kod
    ) 
    RIGHT JOIN 
    q_Mak_Amortisman 
    ON 
        t_Makine.L4_R_Kod = q_Mak_Amortisman.amr_Kod;