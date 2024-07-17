
-- q_Hakedis_Brut.sql - 71.15


SELECT 

	q_Hk_Birlesik.Hk_No, 
	q_Hk_Birlesik.AYGM_Poz, 

	k_Pozlar_L4.L4_Birim, 
	k_Pozlar_L4.L4_BF_DG, 
	k_Pozlar_L4.L4_Ack_Kisa,

	q_Tutar_Ihzarat_Rp_Ozet.Tpl_Tutar	AS ttr_Ihzarat, 
	q_Miktar_Imalat.Miktar 				AS mkt_Imalat, 
	q_Miktar_Imalat.Miktar * L4_BF_DG 	AS ttr_Imalat, 

	Nz( q_Miktar_Imalat.Miktar * L4_BF_DG ) + Nz( Tpl_Tutar ) AS ttr_Toplam 
	

FROM 
	(
		(
			q_Hk_Birlesik 
			LEFT JOIN 
			q_Miktar_Imalat 
			ON 
				(q_Hk_Birlesik.Hk_No = q_Miktar_Imalat.Hk_No) 
				AND 
				(q_Hk_Birlesik.AYGM_Poz = q_Miktar_Imalat.AYGM_Poz)
		) 
		LEFT JOIN 
		q_Tutar_Ihzarat_Rp_Ozet 
		ON 
			(q_Hk_Birlesik.Hk_No = q_Tutar_Ihzarat_Rp_Ozet.Hk_No) 
			AND 
			(q_Hk_Birlesik.AYGM_Poz = q_Tutar_Ihzarat_Rp_Ozet.AYGM_Poz)
	) 
	LEFT JOIN 
	k_Pozlar_L4 
	ON 
		q_Hk_Birlesik.AYGM_Poz = k_Pozlar_L4.AYGM_Poz


GROUP BY 
	
	q_Hk_Birlesik.Hk_No, 
	q_Hk_Birlesik.AYGM_Poz, 
	k_Pozlar_L4.L4_Birim, 
	k_Pozlar_L4.L4_BF_DG, 
	k_Pozlar_L4.L4_Ack_Kisa,
	q_Tutar_Ihzarat_Rp_Ozet.Tpl_Tutar,				
	q_Miktar_Imalat.Miktar