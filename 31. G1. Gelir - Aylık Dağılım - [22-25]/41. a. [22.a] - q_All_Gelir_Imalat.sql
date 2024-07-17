
-- q_All_Gelir_Imalat - 31.41.a


INSERT INTO 

    t_Excel_Aylik 
    ( 
        xls_Kod,
        xls_From, 
        xls_Ay, 
        xls_Miktar, 
        xls_Tutar 
    )

SELECT 

    L4_Kod                  AS gIml_Poz, 
    "q_All_Gelir_Imalat"    AS gIml_From,

    glr_Ay                  AS gIml_Ay, 
    glr_Miktar              AS gIml_Miktar, 
    L4_BF_DG * glr_Miktar   AS gIml_Tutar

FROM 

    q_Aylik_Mkt_Gelir 
    LEFT JOIN 
    k_Pozlar_L4 
    ON q_Aylik_Mkt_Gelir.AYGM_Poz = k_Pozlar_L4.AYGM_Poz

WHERE 

    glr_Ver = ( SELECT t_Kabuller.ver_B FROM t_Kabuller )