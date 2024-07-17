
-- q_Aylik_MT_2426_Add - 04.16


INSERT INTO 

    t_Aylik_Mak_Taksit 
    ( 
        mkp_No,
        mkp_Kod, 
        mkp_Tarih, 
        mkp_Tutar
    )

SELECT 

    mak_No,
    mak_Kod, 
    mkp_Tarih, 
    mkp_Tutar

FROM 
    q_Aylik_Mak_Taksit_2426;