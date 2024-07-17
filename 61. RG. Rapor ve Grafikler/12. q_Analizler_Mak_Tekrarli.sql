
-- q_Analizler_Mak_Tekrarli.sql - 51.12


SELECT 
    anz_Poz_Kod             AS m_Poz,
    anz_Poz_Aciklama        AS m_Poz_Aciklama,
    anz_Rayic_Kod           AS m_Kod,
    anz_Rayic_Aciklama      AS m_Aciklama,  
    anz_Crp_3               AS m_Sa_Kapasite, 
    anz_Crp_1               AS m_Carpan,
    anz_Crp_1 / anz_Crp_3   AS m_Br_Saat  

FROM
    q_Analizler_Detay

WHERE
    q_Analizler_Detay.anz_Rayic_Tip = "1. Amortisman"

ORDER BY 
    q_Analizler_Detay.anz_Poz_Kod, 
    q_Analizler_Detay.anz_Poz_Aciklama;
