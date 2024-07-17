
-- q_Iml_Ihz_Birlesim - 31.40


SELECT

    gIml_Poz AS join_Poz,
    gIml_Ay  AS join_Ay

FROM

    q_All_Gelir_Imalat_F

UNION

SELECT

    gIhz_Poz AS join_Poz,
    gIhz_Ay  AS join_Ay

FROM

    q_All_Gelir_Ihzarat_F