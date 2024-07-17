
-- q_Aylik_Say_EndPer_28_SN - 21.16


INSERT INTO t_Aylik_Say_EndPer
SELECT      q_Aylik_Say_EndPer_28_SN.*
FROM        q_Aylik_Say_EndPer_28_SN
WHERE       q_Aylik_Say_EndPer_28_SN.say_EP <> 0;