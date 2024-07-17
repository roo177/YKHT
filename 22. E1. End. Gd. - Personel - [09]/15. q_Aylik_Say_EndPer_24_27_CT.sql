
-- q_Aylik_Say_EndPer_24_27 - 21.15


INSERT INTO t_Aylik_Say_EndPer
SELECT      q_Aylik_Say_EndPer_24_27.*
FROM        q_Aylik_Say_EndPer_24_27
WHERE       q_Aylik_Say_EndPer_24_27.say_EP <> 0;