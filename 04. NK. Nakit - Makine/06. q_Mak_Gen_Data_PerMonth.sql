
-- q_All_Codes_And_Months - 04.06


SELECT 
    kns_Kod,
    kns_Trh
FROM
    q_Mak_Fatura_Kns

UNION

SELECT 
    kns_Kod,
    kns_Trh
FROM
    q_Mak_Saha_Kns

UNION

SELECT 
    kns_Kod,
    kns_Trh
FROM
    q_Mak_Taksit_Kns