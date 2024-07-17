
-- q_Analizler_Mak_Sa_Kontrol - 75.11


SELECT 
    
    anz_Poz_Kod                             AS m_Poz, 
    anz_Poz_Aciklama                        AS m_Poz_Aciklama, 
    anz_Rayic_Kod                           AS m_Kod, 
    anz_Rayic_Aciklama                      AS m_Aciklama, 
    Sum( anz_Crp_1 / anz_Crp_3 )            AS m_Br_Saat, 
    Tarih                                   AS m_Ay,
    Miktar                                  AS m_Poz_Miktar,
    Sum( anz_Crp_1 / anz_Crp_3 ) * Miktar   AS m_Tpl_Saat,
    D_BT                                    AS m_BF_Analiz,
    Miktar * D_BT                           AS m_Poz_ttr_1  

FROM 
    (
        q_Analizler_Detay 
        LEFT JOIN a_t_Aylik_Mkt_Gider_Flat 
        ON q_Analizler_Detay.anz_Poz_Kod = a_t_Aylik_Mkt_Gider_Flat.L4_Kod
    ) 
    LEFT JOIN q_Analizler_L3_Alt 
    ON 
        (q_Analizler_Detay.anz_Rayic_Tip = q_Analizler_L3_Alt.A_Rayic_Tip) 
        AND 
        (q_Analizler_Detay.anz_Rayic_Kod = q_Analizler_L3_Alt.A_L3_R_Kod) 
        AND 
        (q_Analizler_Detay.anz_Poz_Kod = q_Analizler_L3_Alt.A_L4_Kod)

GROUP BY 
    
    anz_Poz_Kod, 
    anz_Poz_Aciklama, 
    anz_Rayic_Kod, 
    anz_Rayic_Aciklama, 
    anz_Rayic_Tip, 
    Tarih, 
    Miktar,
    D_BT

HAVING
    q_Analizler_Detay.anz_Rayic_Tip = "1. Amortisman"
    AND
    q_Analizler_Detay.anz_Rayic_Kod = "1_MK-2050-0010"
    AND
    a_t_Aylik_Mkt_Gider_Flat.Tarih = #7/1/2025#

ORDER BY
    q_Analizler_Detay.anz_Poz_Kod, q_Analizler_Detay.anz_Poz_Aciklama;
