
-- q_Alt_TMK_KH_1 - 24.45


SELECT 

    end_Dagilim              AS tm_Kod, 
    CDATE("01.10.2023") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  ( 
                IIf( IsNull( k_2023_10 ), 0, k_2023_10 )
            )   * 0.05 * end_Yuzde 
        , 2 )
    ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #10/1/2023# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.01.2024") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2023_11 ), 0, k_2023_11 ) +
                IIf( IsNull( k_2023_12 ), 0, k_2023_12 ) +
                IIf( IsNull( k_2024_01 ), 0, k_2024_01 )
            )   * 0.05 * end_Yuzde
        ,2 )
    ) 
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #1/1/2024# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.04.2024") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2024_02 ), 0, k_2024_02 ) +
                IIf( IsNull( k_2024_03 ), 0, k_2024_03 ) +
                IIf( IsNull( k_2024_04 ), 0, k_2024_04 ) 
            )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #4/1/2024#

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.07.2024") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2024_05 ), 0, k_2024_05 ) +
                IIf( IsNull( k_2024_06 ), 0, k_2024_06 ) +
                IIf( IsNull( k_2024_07 ), 0, k_2024_07 ) 
            )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #7/1/2024# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.10.2024") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2024_08 ), 0, k_2024_08 ) +
                IIf( IsNull( k_2024_09 ), 0, k_2024_09 ) +
                IIf( IsNull( k_2024_10 ), 0, k_2024_10 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #10/1/2024# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.01.2025") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2024_11 ), 0, k_2024_11 ) +
                IIf( IsNull( k_2024_12 ), 0, k_2024_12 ) +
                IIf( IsNull( k_2025_01 ), 0, k_2025_01 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #1/1/2025# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.04.2025") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2025_02 ), 0, k_2025_02 ) +
                IIf( IsNull( k_2025_03 ), 0, k_2025_03 ) +
                IIf( IsNull( k_2025_04 ), 0, k_2025_04 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #4/1/2025#
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.07.2025") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2025_05 ), 0, k_2025_05 ) +
                IIf( IsNull( k_2025_06 ), 0, k_2025_06 ) +
                IIf( IsNull( k_2025_07 ), 0, k_2025_07 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #7/1/2025# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.10.2025") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2025_08 ), 0, k_2025_08 ) +
                IIf( IsNull( k_2025_09 ), 0, k_2025_09 ) +
                IIf( IsNull( k_2025_10 ), 0, k_2025_10 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #10/1/2025# 

GROUP BY
    end_Dagilim,         
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.01.2026") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2025_11 ), 0, k_2025_11 ) +
                IIf( IsNull( k_2025_12 ), 0, k_2025_12 ) +
                IIf( IsNull( k_2026_01 ), 0, k_2026_01 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #1/1/2026# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.04.2026") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2026_02 ), 0, k_2026_02 ) +
                IIf( IsNull( k_2026_03 ), 0, k_2026_03 ) +
                IIf( IsNull( k_2026_04 ), 0, k_2026_04 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #4/1/2026# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.07.2026") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2026_05 ), 0, k_2026_05 ) +
                IIf( IsNull( k_2026_06 ), 0, k_2026_06 ) +
                IIf( IsNull( k_2026_07 ), 0, k_2026_07 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #7/1/2026# 

GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.10.2026") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2026_08 ), 0, k_2026_08 ) +
                IIf( IsNull( k_2026_09 ), 0, k_2026_09 ) +
                IIf( IsNull( k_2026_10 ), 0, k_2026_10 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #10/1/2026# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.01.2027") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2027_11 ), 0, k_2027_11 ) +
                IIf( IsNull( k_2027_12 ), 0, k_2027_12 ) +
                IIf( IsNull( k_2027_01 ), 0, k_2027_01 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #1/1/2027# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.04.2027") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2027_02 ), 0, k_2027_02 ) +
                IIf( IsNull( k_2027_03 ), 0, k_2027_03 ) +
                IIf( IsNull( k_2027_04 ), 0, k_2027_04 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #4/1/2027# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.07.2027") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2027_05 ), 0, k_2027_05 ) +
                IIf( IsNull( k_2027_06 ), 0, k_2027_06 ) +
                IIf( IsNull( k_2027_07 ), 0, k_2027_07 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #7/1/2027# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.10.2027") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2027_08 ), 0, k_2027_08 ) +
                IIf( IsNull( k_2027_09 ), 0, k_2027_09 ) +
                IIf( IsNull( k_2027_10 ), 0, k_2027_10 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #10/1/2027# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.01.2028") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2027_11 ), 0, k_2027_11 ) +
                IIf( IsNull( k_2027_12 ), 0, k_2027_12 ) +
                IIf( IsNull( k_2028_01 ), 0, k_2028_01 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #1/1/2028# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.04.2028") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2028_02 ), 0, k_2028_02 ) +
                IIf( IsNull( k_2028_03 ), 0, k_2028_03 ) +
                IIf( IsNull( k_2028_04 ), 0, k_2028_04 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #4/1/2028# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.07.2028") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2028_05 ), 0, k_2028_05 ) +
                IIf( IsNull( k_2028_06 ), 0, k_2028_06 ) +
                IIf( IsNull( k_2028_07 ), 0, k_2028_07 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #7/1/2028# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")

UNION

SELECT 
    
    end_Dagilim              AS tm_Kod, 
    CDATE("01.10.2028") AS tm_Ay,
    Sum( end_Yuzde )      AS tm_Miktar,

    Sum( Round(  (
                IIf( IsNull( k_2028_08 ), 0, k_2028_08 ) +
                IIf( IsNull( k_2028_09 ), 0, k_2028_09 ) +
                IIf( IsNull( k_2028_10 ), 0, k_2028_10 )
                )   * 0.05 * end_Yuzde
        ,2 )
    )
    AS tm_Tutar

FROM 
    t_Aylik_End_Gnl,
    a_t_Aylik_KH_Cross

WHERE
    end_Dagilim = "E-7.FIN-01.TEM-050" AND
    end_Ay >= #10/1/2028# 
    
GROUP BY
    end_Dagilim,          
    CDATE("01.10.2023")