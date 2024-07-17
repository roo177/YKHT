
-- q_Aylik_Say_EndMak_24_27_CT - 21.15


INSERT INTO t_Aylik_Say_EndMak
SELECT      q_Aylik_Say_EndMak_24_27.*
FROM        q_Aylik_Say_EndMak_24_27
WHERE       q_Aylik_Say_EndMak_24_27.say_EM <> 0;