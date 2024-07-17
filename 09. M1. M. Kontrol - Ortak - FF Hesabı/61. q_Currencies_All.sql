
-- q_Currencies_All.sql - 09.61


SELECT
    e_Ay    AS cur_Ay,
    EUR     AS cur_EUR,
    USD     AS cur_USD

FROM
    t_Endeks_Veri

UNION ALL

SELECT
    kum_Ay  AS cur_Ay,
    man_EUR AS cur_EUR,
    man_USD AS cur_USD

FROM
    t_VBA_Man_Tah_Kum