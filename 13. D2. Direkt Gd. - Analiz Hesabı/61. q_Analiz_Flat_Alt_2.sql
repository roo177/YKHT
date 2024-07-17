
-- q_Analiz_Flat_Alt_2 - 13.61


SELECT 
    
    t_Analizler.A_bV            AS flt_Ver, 
    t_Analizler.A_L4_Kod        AS flt_Poz_Kod, 
    
    t_Yrd_Analizler.A_L3_R_Kod  AS flt_Ryc_Kod, 
    t_Yrd_Analizler.A_Rayic_Tip AS flt_Ryc_Tip, 

    t_Yrd_Analizler.A_P1_Dgr    AS flt_P1,

    t_Yrd_Analizler.A_P2_Dgr *
        t_Analizler.A_P1_Dgr *
        t_Analizler.A_P2_Dgr * 
        t_Analizler.A_P3_Dgr  
    AS flt_P2, 
    
    t_Yrd_Analizler.A_P3_Dgr    AS flt_P3

FROM 
    
    t_Analizler 
    LEFT JOIN 
    t_Yrd_Analizler 
    ON 
        t_Analizler.A_L3_R_Kod = t_Yrd_Analizler.A_L4_Kod

WHERE 
    t_Analizler.A_L3_R_Kod Like "5*"
    AND
    t_Analizler.A_bV = DLookup( "ver_B", "t_Kabuller" ) 