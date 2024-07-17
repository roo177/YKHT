
-- q_All_Update_FF - 31.72.a

 
UPDATE 

    t_Excel_Aylik 
    INNER JOIN 
    (
        t_Hakedisler 
        INNER JOIN 
        t_HK_FF_Tutar 
        ON 
            t_Hakedisler.Hk_No = t_HK_FF_Tutar.Hk_No
    ) 
    ON 
        t_Excel_Aylik.xls_Ay = t_Hakedisler.Hk_Tarih 

SET 
    t_Excel_Aylik.xls_Tutar = t_HK_FF_Tutar.ff_Tutar

WHERE
    t_Excel_Aylik.xls_Kod = 'C-1.FFK-01.GNL-001';