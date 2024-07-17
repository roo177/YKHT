
-- q_Mak_Amortisman_Grc.sql - 04.42


SELECT 

    t_Mak_Gen_Data.mak_No   AS amr_No,
    t_Mak_Gen_Data.mak_Kod  AS amr_Kod, 
    t_Mak_Gen_Data.mak_Adet AS amr_Miktar,
    t_Mak_Gen_Data.mak_FK   AS amr_FK,    

    IIf( IsNull( q_Mak_Taksit_Grc.mkt_Tutar ),      0, q_Mak_Taksit_Grc.mkt_Tutar       ) AS amr_Taksit,
    IIf( IsNull( q_Mak_Fatura_Grc.mkt_Tutar ),      0, q_Mak_Fatura_Grc.mkt_Tutar       ) AS amr_Fatura, 
    IIf( IsNull( q_Mak_Saha_Grc.mkt_Tutar   ),      0, - q_Mak_Saha_Grc.mkt_Tutar         ) AS amr_Geri,

    amr_Taksit + amr_Fatura + amr_Geri AS amr_Tutar,

    IIf( IsNull( q_Mak_Taksit_Grc.mkt_Tutar_EUR ),  0, q_Mak_Taksit_Grc.mkt_Tutar_EUR   ) AS amr_Taksit_EUR,
    IIf( IsNull( q_Mak_Fatura_Grc.mkt_Tutar_EUR ),  0, q_Mak_Fatura_Grc.mkt_Tutar_EUR   ) AS amr_Fatura_EUR, 
    IIf( IsNull( q_Mak_Saha_Grc.mkt_Tutar_EUR   ),  0, q_Mak_Saha_Grc.mkt_Tutar_EUR     ) AS amr_Geri_EUR,

    amr_Taksit_EUR + amr_Fatura_EUR + amr_Geri_EUR AS amr_Tutar_EUR

FROM 
    (
        (
            t_Mak_Gen_Data 
            LEFT JOIN 
            q_Mak_Fatura_Grc 
            ON 
                t_Mak_Gen_Data.mak_No = q_Mak_Fatura_Grc.mkt_No
        ) 
        LEFT JOIN 
        q_Mak_Saha_Grc 
        ON 
            t_Mak_Gen_Data.mak_No = q_Mak_Saha_Grc.mkt_No
    ) 
    LEFT JOIN 
    q_Mak_Taksit_Grc 
    ON 
        t_Mak_Gen_Data.mak_No = q_Mak_Taksit_Grc.mkt_No

WHERE
    IIf( IsNull( q_Mak_Taksit_Grc.mkt_Tutar ), 0, q_Mak_Taksit_Grc.mkt_Tutar ) +
    IIf( IsNull( q_Mak_Fatura_Grc.mkt_Tutar ), 0, q_Mak_Fatura_Grc.mkt_Tutar ) +
    IIf( IsNull( q_Mak_Saha_Grc.mkt_Tutar   ), 0, q_Mak_Saha_Grc.mkt_Tutar   ) <> 0

ORDER BY
    t_Mak_Gen_Data.mak_No
