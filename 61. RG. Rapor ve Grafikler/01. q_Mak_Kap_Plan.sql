
-- q_Mak_Kap_Plan - 51.01

SELECT

    q_Say_Drk_MakAy.mak_Tarih, 
    q_Say_Drk_MakAy.mak_Kod, 
    
    k_Rayicler_L3.L3_R_Aciklama, 
    
    q_Say_Drk_MakAy.mak_MakAy

FROM 

    q_Say_Drk_MakAy LEFT JOIN k_Rayicler_L3 
    ON q_Say_Drk_MakAy.mak_Kod = k_Rayicler_L3.L3_R_Kod

WHERE 
    q_Say_Drk_MakAy.mak_Kod = "1_MK-2050-0010"