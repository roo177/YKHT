
-- q_Aylik_FF_Cross - 24.32.a


TRANSFORM   Sum( ffk_Tutar ) AS f_Tutar
SELECT      ffk_Kod
FROM        q_Aylik_FF_Tutar
GROUP BY    ffk_Kod
PIVOT       Format( ffk_Ay, "f_" & "yyyy_mm" ) 
    IN 
    (
        "f_2023_10",
        "f_2023_11",
        "f_2023_12",
        
        "f_2024_01",
        "f_2024_02",
        "f_2024_03",
        "f_2024_04",
        "f_2024_05",
        "f_2024_06",
        "f_2024_07",
        "f_2024_08",
        "f_2024_09",
        "f_2024_10",
        "f_2024_11",
        "f_2024_12",

        "f_2025_01",
        "f_2025_02",
        "f_2025_03",
        "f_2025_04",
        "f_2025_05",
        "f_2025_06",
        "f_2025_07",
        "f_2025_08",
        "f_2025_09",
        "f_2025_10",
        "f_2025_11",
        "f_2025_12",
    
        "f_2026_01",
        "f_2026_02",
        "f_2026_03",
        "f_2026_04",
        "f_2026_05",
        "f_2026_06",
        "f_2026_07",
        "f_2026_08",
        "f_2026_09",
        "f_2026_10",
        "f_2026_11",
        "f_2026_12",

        "f_2027_01",
        "f_2027_02",
        "f_2027_03",
        "f_2027_04",
        "f_2027_05",
        "f_2027_06",
        "f_2027_07",
        "f_2027_08",
        "f_2027_09",
        "f_2027_10",
        "f_2027_11",
        "f_2027_12",

        "f_2028_01",
        "f_2028_02",
        "f_2028_03",
        "f_2028_04",
        "f_2028_05",
        "f_2028_06",
        "f_2028_07",
        "f_2028_08",
        "f_2028_09",
        "f_2028_10",
        "f_2028_11",
        "f_2028_12"
    );
