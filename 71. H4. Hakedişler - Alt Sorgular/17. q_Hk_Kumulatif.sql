
-- q_Hk_Kumulatif - 71.17


SELECT
 
	q_Hakedis_FFile.Hk_No, 

	CCur( DSum( 
		"Brut_Imalat", "q_Hakedis_FFile", "Hk_No_Numeric <=" & Hk_No_Numeric 
		)
	) AS kum_Imalat,

	CCur( 
		DSum( 
			"Brut_Ihzarat",	"q_Hakedis_FFile","Hk_No_Numeric <=" & Hk_No_Numeric
		)
	) AS kum_Ihzarat,

	CCur( 
		DSum( 
			"Brut", "q_Hakedis_FFile","Hk_No_Numeric <=" & Hk_No_Numeric
		)
	) AS kum_Brut,

	CCur( 
		DSum( 
			"ttr_FFile", "q_Hakedis_FFile","Hk_No_Numeric <=" & Hk_No_Numeric 
		)
	) AS kum_FFile, 

	Brut AS ttr_Brut, 
	ttr_FFile

FROM 
	
	q_Hakedis_FFile 
	LEFT JOIN 
	t_Hakedisler 
	ON
		q_Hakedis_FFile.Hk_No = t_Hakedisler.Hk_No