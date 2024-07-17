
-- q_All_Update_FF_RB - 31.72.b

 
UPDATE 

    t_Excel_Aylik_RB 
    INNER JOIN 
    (
        t_Hakedisler 
        INNER JOIN 
        t_HK_FF_Tutar 
        ON 
            t_Hakedisler.Hk_No = t_HK_FF_Tutar.Hk_No
    ) 
    ON 
        t_Excel_Aylik_RB.xls_Ay = t_Hakedisler.Hk_Tarih 

SET 
    t_Excel_Aylik_RB.xls_Tutar = t_HK_FF_Tutar.ff_Tutar

WHERE
    t_Excel_Aylik_RB.xls_Kod = 'C-1.FFK-01.GNL-001';