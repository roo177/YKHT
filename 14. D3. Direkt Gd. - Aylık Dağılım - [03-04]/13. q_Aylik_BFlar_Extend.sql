
-- q_Aylik_BFlar_Extend - 14.13


SELECT 

    k_Pozlar_L4.L4_Kod, 
    q_Aylik_BFlar.g_Ay, 
    q_Aylik_BFlar.Aylik_BF
    
FROM 
    
    q_Aylik_BFlar 
    LEFT JOIN 
    k_Pozlar_L4 
    ON 
        q_Aylik_BFlar.A_L4_Kod = k_Pozlar_L4.L4_Kod_Kns;