
--  q_Add_t_Escalation_Profiles - 09.51


INSERT INTO 
    
    t_Escalation_Profiles ( 
        
        esc_Profile, 
        g_Ay, 
        f_Baslik, 
        FFK_AK, 
        YKT_AK, 
        BKM_AK, 
        EUR_AK, 
        USD_AK 
    )

SELECT 
    
    esc_Profile, 
    g_Ay, 
    f_Baslik, 
    FFK_AK, 
    YKT_AK, 
    BKM_AK, 
    EUR_AK, 
    USD_AK

FROM 
    q_Escalation_Profiles
