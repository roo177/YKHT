
-- q_Mak_Amortisman.sql - 04.41


SELECT 

    t_Mak_Gen_Data.mak_No   AS amr_No,
    t_Mak_Gen_Data.mak_Kod  AS amr_Kod, 
    t_Mak_Gen_Data.mak_Adet AS amr_Miktar,
    t_Mak_Gen_Data.mak_FK   AS amr_FK,    

    IIf( IsNull( q_Mak_Taksit.mkt_Tutar ),      0, q_Mak_Taksit.mkt_Tutar       ) AS amr_Taksit,
    IIf( IsNull( q_Mak_Fatura.mkt_Tutar ),      0, q_Mak_Fatura.mkt_Tutar       ) AS amr_Fatura, 
    IIf( IsNull( q_Mak_Saha.mkt_Tutar   ),      0, - q_Mak_Saha.mkt_Tutar         ) AS amr_Geri,

    amr_Taksit + amr_Fatura + amr_Geri AS amr_Tutar,

    IIf( IsNull( q_Mak_Taksit.mkt_Tutar_EUR ),  0, q_Mak_Taksit.mkt_Tutar_EUR   ) AS amr_Taksit_EUR,
    IIf( IsNull( q_Mak_Fatura.mkt_Tutar_EUR ),  0, q_Mak_Fatura.mkt_Tutar_EUR   ) AS amr_Fatura_EUR, 
    IIf( IsNull( q_Mak_Saha.mkt_Tutar_EUR   ),  0, q_Mak_Saha.mkt_Tutar_EUR     ) AS amr_Geri_EUR,

    amr_Taksit_EUR + amr_Fatura_EUR + amr_Geri_EUR AS amr_Tutar_EUR

FROM 
    (
        (
            t_Mak_Gen_Data 
            LEFT JOIN 
            q_Mak_Fatura 
            ON 
                t_Mak_Gen_Data.mak_No = q_Mak_Fatura.mkt_No
        ) 
        LEFT JOIN 
        q_Mak_Saha 
        ON 
            t_Mak_Gen_Data.mak_No = q_Mak_Saha.mkt_No
    ) 
    LEFT JOIN 
    q_Mak_Taksit 
    ON 
        t_Mak_Gen_Data.mak_No = q_Mak_Taksit.mkt_No

ORDER BY
    t_Mak_Gen_Data.mak_No
