
-- q_Analizler_Mak_Tekil - 51.13


SELECT 
    anz_Poz_Kod         AS m_Poz,
    anz_Poz_Aciklama    AS m_Poz_Aciklama,
    anz_Rayic_Kod       AS m_Kod,
    anz_Rayic_Aciklama  AS m_Aciklama, 

    Sum( anz_Crp_1 / anz_Crp_3 ) AS m_Br_Saat  

FROM
    q_Analizler_Detay

GROUP BY
    anz_Poz_Kod,
    anz_Poz_Aciklama,
    anz_Rayic_Kod,
    anz_Rayic_Aciklama,
    anz_Rayic_Tip

HAVING
    q_Analizler_Detay.anz_Rayic_Tip = "1. Amortisman"

ORDER BY 
    q_Analizler_Detay.anz_Poz_Kod, 
    q_Analizler_Detay.anz_Poz_Aciklama;
