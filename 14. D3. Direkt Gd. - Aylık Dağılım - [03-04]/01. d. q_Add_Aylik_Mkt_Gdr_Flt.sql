
-- q_Add_Aylik_Mkt_Gdr_Flt - 14.01


INSERT INTO 

    a_t_Aylik_Mkt_Gider_Flat 
    ( 
        L4_Kod, 
        Tarih, 
        Miktar 
    )

SELECT 
    
    q_Aylik_Mkt_Gider.L4_Kod, 
    q_Aylik_Mkt_Gider.Tarih, 
    q_Aylik_Mkt_Gider.Miktar

FROM 
    
    q_Aylik_Mkt_Gider