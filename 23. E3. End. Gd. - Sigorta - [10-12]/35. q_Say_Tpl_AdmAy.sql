
-- q_Say_Tpl_AdmAy - 23.35


SELECT 

    t_Aylar.g_Ay, 

    IIf( IsNull( tpl_D_AdmAy ), 0, tpl_D_AdmAy ) AS D_Adm_Ay, 
    IIf( IsNull( tpl_E_AdmAy ), 0, tpl_E_AdmAy ) AS E_Adm_Ay,

    IIf( IsNull( tpl_D_AdmAy ), 0, tpl_D_AdmAy ) +
    IIf( IsNull( tpl_E_AdmAy ), 0, tpl_E_AdmAy ) AS tpl_AdmAy

FROM 
    (
        t_Aylar 
        LEFT JOIN 
        q_say_Drk_AdmAy 
        ON 
            t_Aylar.g_Ay = q_say_Drk_AdmAy.Tarih
    ) 
    LEFT JOIN 
    q_Say_End_AdmAy 
    ON 
        t_Aylar.g_Ay = q_Say_End_AdmAy.Tarih

WHERE
    IIf( IsNull( tpl_D_AdmAy ), 0, tpl_D_AdmAy ) +
    IIf( IsNull( tpl_E_AdmAy ), 0, tpl_E_AdmAy ) <> 0