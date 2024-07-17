
-- q_Say_End_AdmAy - 23.34


SELECT 

    "Beyaz Yaka" AS Pers_Sinif,

    t_Aylik_Say_EndPer.Tarih, 
    Sum(t_Aylik_Say_EndPer.[say_EP]) AS tpl_E_AdmAy

FROM 
    t_Aylik_Say_EndPer

GROUP BY 

    "Beyaz Yaka",
    t_Aylik_Say_EndPer.Tarih;