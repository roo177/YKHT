
-- q_All_TMK_SZ - 24.61.a


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

    t_Aylik_End_Gnl.end_Dagilim  AS tmk_Kod,
    "q_All_TMK_SZ"               AS tmk_From,
    end_Ay                       AS tmk_Date,
    end_Yuzde                    AS tmk_Miktar, 
    
    - ( 
        SELECT      Sum( t_Mektuplar.Tutar ) AS ToplaTutar
        FROM        t_Mektuplar
        GROUP BY    t_Mektuplar.Tip
        HAVING      t_Mektuplar.Tip = "Sözleşme" 
    ) * end_Yuzde
    AS tmk_Tutar

FROM 
    t_Aylik_End_Gnl 

WHERE 

    t_Aylik_End_Gnl.end_Dagilim = "E-7.FIN-01.TEM-010"
    AND
    end_Ay > DLookup( "a_SonFinGrcAy", "t_Kabuller" )