
-- q_Hakedis_FFile - 71.16


SELECT 

	q_Hakedis_Brut.Hk_No, 
	 
	Sum( ttr_Ihzarat ) 				AS Brut_Ihzarat, 
	Sum( Nz( ttr_Imalat ) )			AS Brut_Imalat, 
	Sum( ttr_Toplam ) 				AS Brut, 

	Sum( ttr_Toplam ) + ff_Tutar	AS ttr_FFile

FROM 
	q_Hakedis_Brut 
	INNER JOIN 
	t_HK_FF_Tutar 
	ON 
		q_Hakedis_Brut.Hk_No = t_HK_FF_Tutar.Hk_No

GROUP BY 

	q_Hakedis_Brut.Hk_No,
	ff_Tutar