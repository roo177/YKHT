
-- q_Ver_Butce -- 01.00


SELECT

    Format( ver_Say, "0000" ) & " - " & 
    Format( ver_Hzr, "dd.mm.yy" ) & " - " &
    ver_Ack AS ver_Cbx,
    
    ver_Say

FROM

    t_Ver_Butce

ORDER BY 
    
    ver_Say;
