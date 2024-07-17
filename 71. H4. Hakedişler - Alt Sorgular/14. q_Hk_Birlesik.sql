
-- q_Hk_Birlesik - 71.14


SELECT 
	Hk_No, 
	AYGM_Poz 
FROM 
	q_Miktar_Imalat

UNION 

SELECT 
	Hk_No, 
	AYGM_Poz 
FROM 
	q_Tutar_Ihzarat_Rp_Ozet