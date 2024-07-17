
-- q_All_Sgr_FKaza_Alt - 23-41


SELECT 

    fks_Kod             AS ks_Kod,
    #11/1/23#           AS ks_Ay,
    Sum( fks_Miktar )   AS ks_Miktar,
    Sum( fks_Tutar )    AS ks_Tutar

FROM
    a_t_All_Sgr_FKaza_Alt_Alt

WHERE

    fks_Ay >= #01/1/2024# 
    AND 
    fks_Ay <  #12/1/2024#

GROUP BY
    fks_Kod


UNION


SELECT 

    fks_Kod             AS ks_Kod,
    #11/1/24#           AS ks_Ay,
    Sum( fks_Miktar )   AS ks_Miktar,
    Sum( fks_Tutar )    AS ks_Tutar

FROM
    a_t_All_Sgr_FKaza_Alt_Alt

WHERE

    fks_Ay >= #01/1/2025# 
    AND 
    fks_Ay <  #12/1/2025#

GROUP BY
    fks_Kod


UNION


SELECT 

    fks_Kod             AS ks_Kod,
    #11/1/25#           AS ks_Ay,
    Sum( fks_Miktar )   AS ks_Miktar,
    Sum( fks_Tutar )    AS ks_Tutar

FROM
    a_t_All_Sgr_FKaza_Alt_Alt

WHERE

    fks_Ay >= #01/1/2026# 
    AND 
    fks_Ay <  #12/1/2026#

GROUP BY
    fks_Kod


UNION


SELECT 

    fks_Kod             AS ks_Kod,
    #11/1/26#           AS ks_Ay,
    Sum( fks_Miktar )   AS ks_Miktar,
    Sum( fks_Tutar )    AS ks_Tutar

FROM
    a_t_All_Sgr_FKaza_Alt_Alt

WHERE

    fks_Ay >= #01/1/2027# 
    AND 
    fks_Ay <  #12/1/2027#
GROUP BY

    fks_Kod


UNION


SELECT 

    fks_Kod             AS ks_Kod,
    #11/1/27#           AS ks_Ay,
    Sum( fks_Miktar )   AS ks_Miktar,
    Sum( fks_Tutar )    AS ks_Tutar

FROM
    a_t_All_Sgr_FKaza_Alt_Alt

WHERE

    fks_Ay >= #01/1/2028# 
    AND 
    fks_Ay <  #12/1/2028#

GROUP BY
    fks_Kod
