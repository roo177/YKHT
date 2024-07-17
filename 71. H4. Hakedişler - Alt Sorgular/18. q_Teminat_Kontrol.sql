
-- q_Teminat_Kontrol - 71.18


SELECT 

	q_Hk_Kumulatif.Hk_No, 
	t_Mektuplar.Tip, 
	q_Hk_Kumulatif.kum_FFile, 
	q_Hk_Kumulatif.kum_Brut,
	t_Mektuplar.Banka, 
	t_Mektuplar.Sube, 
	t_Mektuplar.Tutar, 
	t_Mektuplar.Referans, 
	t_Mektuplar.Alindi_Tarihi, 
	t_Mektuplar.Gecerlilik, 
	

	kum_FFile * 0.05 				AS KH_Teminat, 
	(kum_FFile-kum_Brut)*0.06 	AS FF_Teminat,
	kum_Ihzarat 					AS IH_Teminat, 
	Sum(t_Mektuplar.Tutar)     		AS Toplam_Teminat,


	IIf( Tip = "Kesin Hesap", 
		Sum( Tutar ) - kum_FFile * 0.05, 

	IIf( Tip = "Fiyat Farkı",
		Sum( Tutar ) - ( kum_FFile - kum_Brut ) * 0.06, 

	IIf( Tip = "İhzarat",
		Sum( Tutar ) - kum_Ihzarat, 

	0 ) ) ) AS Kalan_Teminat 


FROM 

	t_Mektuplar, 
	q_Hk_Kumulatif


GROUP BY 


	q_Hk_Kumulatif.Hk_No, 
	t_Mektuplar.Tip, 
	q_Hk_Kumulatif.kum_Ihzarat,
	q_Hk_Kumulatif.kum_Brut,
	q_Hk_Kumulatif.kum_FFile, 
	t_Mektuplar.Banka, 
	t_Mektuplar.Sube, 
	t_Mektuplar.Tutar, 
	t_Mektuplar.Referans, 
	t_Mektuplar.Alindi_Tarihi, 
	t_Mektuplar.Gecerlilik;