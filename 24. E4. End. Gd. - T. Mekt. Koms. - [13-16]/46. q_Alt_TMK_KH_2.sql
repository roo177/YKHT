
-- q_Alt_TMK_KH_2 - 24.46


SELECT 
    "E-7.FIN-01.TEM-050" AS tm_Kod, 
    CDATE("01.11.2023")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  ( 
                IIf( IsNull( k_2023_11 ), 0, k_2023_11 )
            )   * 0.05 * end_Yuzde 
        , 2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #11/1/2023# 

UNION

SELECT 
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.12.2023")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  ( 
                IIf( IsNull( k_2023_11 ), 0, k_2023_11 ) + 
                IIf( IsNull( k_2023_12 ), 0, k_2023_12 )
            )   * 0.05 * end_Yuzde 
        , 2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #12/1/2023# 



UNION



SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.02.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_02 ), 0, k_2024_02 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #2/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.03.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_02 ), 0, k_2024_02 ) + 
                IIf( IsNull( k_2024_03 ), 0, k_2024_03 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #3/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.05.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_05 ), 0, k_2024_05 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #5/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.06.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_05 ), 0, k_2024_05 ) + 
                IIf( IsNull( k_2024_06 ), 0, k_2024_06 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #6/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.08.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_08 ), 0, k_2024_08 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #8/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.09.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_09 ), 0, k_2024_09 ) + 
                IIf( IsNull( k_2024_10 ), 0, k_2024_10 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #9/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.11.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_11 ), 0, k_2024_11 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #11/1/2024# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.12.2024")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2024_11 ), 0, k_2024_11 ) + 
                IIf( IsNull( k_2024_12 ), 0, k_2024_12 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #12/1/2024# 



UNION



SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.02.2025")  AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_02 ), 0, k_2025_02 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #2/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.03.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_02 ), 0, k_2025_02 ) + 
                IIf( IsNull( k_2025_03 ), 0, k_2025_03 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #3/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.05.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_05 ), 0, k_2025_05 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #5/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.06.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_05 ), 0, k_2025_05 ) + 
                IIf( IsNull( k_2025_06 ), 0, k_2025_06 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #6/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.08.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_08 ), 0, k_2025_08 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #8/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.09.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_09 ), 0, k_2025_09 ) + 
                IIf( IsNull( k_2025_10 ), 0, k_2025_10 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #9/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.11.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_11 ), 0, k_2025_11 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #11/1/2025# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.12.2025") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2025_11 ), 0, k_2025_11 ) + 
                IIf( IsNull( k_2025_12 ), 0, k_2025_12 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #12/1/2025# 



UNION



SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.02.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_02 ), 0, k_2026_02 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #2/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.03.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_02 ), 0, k_2026_02 ) + 
                IIf( IsNull( k_2026_03 ), 0, k_2026_03 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #3/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.05.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_05 ), 0, k_2026_05 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #5/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.06.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_05 ), 0, k_2026_05 ) + 
                IIf( IsNull( k_2026_06 ), 0, k_2026_06 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #6/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.08.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_08 ), 0, k_2026_08 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #8/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.09.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_09 ), 0, k_2026_09 ) + 
                IIf( IsNull( k_2026_10 ), 0, k_2026_10 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #9/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.11.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_11 ), 0, k_2026_11 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #11/1/2026# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.12.2026") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2026_11 ), 0, k_2026_11 ) + 
                IIf( IsNull( k_2026_12 ), 0, k_2026_12 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #12/1/2026# 



UNION



SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.02.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_02 ), 0, k_2027_02 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #2/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.03.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_02 ), 0, k_2027_02 ) + 
                IIf( IsNull( k_2027_03 ), 0, k_2027_03 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #3/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.05.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_05 ), 0, k_2027_05 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #5/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.06.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_05 ), 0, k_2027_05 ) + 
                IIf( IsNull( k_2027_06 ), 0, k_2027_06 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #6/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.08.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_08 ), 0, k_2027_08 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #8/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.09.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_09 ), 0, k_2027_09 ) + 
                IIf( IsNull( k_2027_10 ), 0, k_2027_10 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #9/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.11.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_11 ), 0, k_2027_11 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #11/1/2027# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.12.2027") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2027_11 ), 0, k_2027_11 ) + 
                IIf( IsNull( k_2027_12 ), 0, k_2027_12 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #12/1/2027# 



UNION



SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.02.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_02 ), 0, k_2028_02 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #2/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.03.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_02 ), 0, k_2028_02 ) + 
                IIf( IsNull( k_2028_03 ), 0, k_2028_03 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #3/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.05.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_05 ), 0, k_2028_05 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #5/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.06.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_05 ), 0, k_2028_05 ) + 
                IIf( IsNull( k_2028_06 ), 0, k_2028_06 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #6/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.08.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_08 ), 0, k_2028_08 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #8/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.09.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_09 ), 0, k_2028_09 ) + 
                IIf( IsNull( k_2028_10 ), 0, k_2028_10 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #9/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.11.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_11 ), 0, k_2028_11 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #11/1/2028# 

UNION

SELECT 
    
    "E-7.FIN-01.TEM-050" AS tm_Kod,
    CDATE("01.12.2028") AS tm_Ay,
    end_Yuzde              AS tm_Miktar,

    Round(  (
                IIf( IsNull( k_2028_11 ), 0, k_2028_11 ) + 
                IIf( IsNull( k_2028_12 ), 0, k_2028_12 )
            )   * 0.05 * end_Yuzde
        ,2 ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-031" AND
    end_Ay = #12/1/2028# 