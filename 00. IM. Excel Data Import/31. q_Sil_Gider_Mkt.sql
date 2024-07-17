
-- q_Sil_TSR_Gider_Mkt -- 00.31


DELETE 
    t_Aylik_Mkt_Gider.* 

FROM
    t_Aylik_Mkt_Gider

WHERE 
    t_Aylik_Mkt_Gider.ver_B = ( SELECT t_Kabuller.ver_B FROM t_Kabuller )
    AND
    t_Aylik_Mkt_Gider.ver_B <> 1