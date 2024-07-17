
-- q_Aylik_BFlar - 12.12


SELECT 
    A_L4_Kod, 
    g_Ay, 
    Sum( q_Aylik_BFlar_Alt.BT_E ) AS Aylik_BF

FROM 
    q_Aylik_BFlar_Alt

GROUP BY 
    A_L4_Kod, 
    g_Ay;