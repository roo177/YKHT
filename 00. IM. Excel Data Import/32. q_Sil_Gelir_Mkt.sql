
-- q_Sil_TSR_Gelir_Mkt -- 00.32


DELETE 
    t_Aylik_Mkt_Gelir.* 

FROM
    t_Aylik_Mkt_Gelir

WHERE 
    t_Aylik_Mkt_Gelir.ver_B = ( SELECT t_Kabuller.ver_B FROM t_Kabuller )
    AND
    t_Aylik_Mkt_Gelir.ver_B <> 1;