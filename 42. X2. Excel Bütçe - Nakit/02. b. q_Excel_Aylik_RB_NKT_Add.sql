

-- q_Excel_Aylik_RB_NKT_Add - 42.02.b

INSERT INTO

    t_Excel_Aylik_RB_NKT
    ( 
        xls_Kod, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 
    
    t_Excel_Aylik_RB.xls_Kod    AS xpt_Kod, 

    DateAdd( "m", nak_Ote, t_Excel_Aylik_RB.xls_Ay ) AS xpt_Trh, 

    t_Excel_Aylik_RB.xls_Miktar AS xpt_Mkt,               
    t_Excel_Aylik_RB.xls_Tutar  AS xpt_Ttr

FROM 

    k_Pozlar_L4 
    RIGHT JOIN 
    t_Excel_Aylik_RB 
    ON 
        k_Pozlar_L4.L4_Kod = t_Excel_Aylik_RB.xls_Kod
