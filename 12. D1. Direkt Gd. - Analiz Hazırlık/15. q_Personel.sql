
-- q_Personel - 12.15


SELECT

    k_Rayicler_L3.L3_R_Kod AS p_Kod,
    L3_R_Aciklama,
    F_BF AS p_Net_Maas,

    IIf( p_Net_Maas > m_Prime_Esas_US,  m_Gelir_Vergisi_Tavan,

    IIf(  p_Net_Maas * 12 < 150000,  70000 * 0.15   + ( p_Net_Maas *12 -   70000 ) * 0.2,

    IIf(  p_Net_Maas * 12 > 150000,  70000 * 0.15   + ( 150000         -   70000 ) * 0.2 
      + ( p_Net_Maas * 12 - 150000 ) * 0.27,

    IIf(  p_Net_Maas * 12 > 550000,  70000 * 0.15   + ( 150000         -   70000 ) * 0.2 
      + ( 550000         -  150000 ) * 0.27 
      + ( p_Net_Maas *12 -  550000 ) * 0.35,

    IIf(  p_Net_Maas * 12 > 1900000, 70000 * 0.15   + ( 150000         -   70000 ) * 0.2 
      + ( 550000         -  150000 ) * 0.27 
      + ( 1900000        -  550000 ) * 0.35 
      + ( p_Net_Maas *12 - 1900000 ) * 0.4  ))))) AS p_Gelir_Vergisi,

    p_Net_Maas /  
        ( 1 - 
            ( (     m_SGK_Isci / 100 ) + ( m_Issizlik_Isci / 100 )
            + ( 1 - m_SGK_Isci / 100   -   m_Issizlik_Isci / 100 ) * ( p_Gelir_Vergisi / ( 12 * p_Net_Maas ) ) + m_Damga_VO / 100  
            )  
        ) AS p_Brut_Maas,
    
    p_Brut_Maas * ( 1 + m_SGK_Isveren / 100 + m_Issizlik_Isveren / 100 ) AS p_Toplam_Isveren,

    IIf( p_Brut_Maas > m_Kidem_Tavan, m_Kidem_Tavan / 12, p_Brut_Maas / 12 ) AS p_Kidem_Tazm,
    
    IIf( p_Brut_Maas = m_Asgari_Ucret_Net, 
        ( m_8507_Net_Isv_MO - 1 ) * m_Asgari_Ucret_Net, 
        ( m_9000_Net_Isv_MO - 1 ) * p_Net_Maas 
    ) 
    AS p_SSK_Vergiler,

    IIf( g_Tpl_Ay <   2,   0, 
    IIf( g_Tpl_Ay <=  6, 0.5,
    IIf( g_Tpl_Ay <= 18,   1,  
    IIf( g_Tpl_Ay <= 36, 1.5, 2 
    )))) * 
    ( p_Net_Maas + p_SSK_Vergiler ) / g_Tpl_Ay AS p_Ihbar,

    ( 14 / g_Aylik_Calisma_Gunu ) * p_Net_Maas / 12 AS p_Izin,

    g_Ay_Yemek + g_Ay_ISG AS p_Yemek_ve_ISG,

    p_Toplam_Isveren + p_Kidem_Tazm + p_Ihbar + p_Izin + p_Yemek_ve_ISG AS p_Tpl_Maliyet,

    Round( 
        p_Tpl_Maliyet
        / ( g_Aylik_Calisma_Gunu * a_Gnlk_Cals_Saat )
    , 2 ) AS p_Saatlik_Mly

FROM 
    
    t_R_Fiyatlar 
    RIGHT JOIN 
    (
      q_Kabuller_R3 
      RIGHT JOIN 
      k_Rayicler_L3 
      ON q_Kabuller_R3.L3_R_Kod = k_Rayicler_L3.L3_R_Kod
    ) 
    ON t_R_Fiyatlar.F_Kod = k_Rayicler_L3.L3_R_Kod

WHERE

  Left( k_Rayicler_L3.L3_R_Kod, 4 ) = "2_PR"
  AND
  F_Ver = ver_B