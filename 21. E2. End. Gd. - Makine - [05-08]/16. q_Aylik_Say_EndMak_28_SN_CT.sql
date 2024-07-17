
-- q_Aylik_Say_EndMak_28_SN_CT - 21.16


INSERT INTO t_Aylik_Say_EndMak
SELECT      q_Aylik_Say_EndMak_28_SN.*
FROM        q_Aylik_Say_EndMak_28_SN
WHERE       q_Aylik_Say_EndMak_28_SN.say_EM <> 0;