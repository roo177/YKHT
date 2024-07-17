
-- q_Art_Kts_2308 - 09.40.2308


SELECT 

    "FF_2308"       AS esc_Profile,
    g_Ay, 
    "Fiyat Farkı"   AS f_Baslik,

    Round( 
        0.10 * h01_TUFE       / DLookup( "h01_TUFE",      "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.13 * h02_Min_Urn    / DLookup( "h02_Min_Urn",   "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.25 * h03_Ana_Metal  / DLookup( "h03_Ana_Metal", "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.06 * h04_Deg_AnM    / DLookup( "h04_Deg_AnM",   "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.12 * h05_Raf_PtU    / DLookup( "h05_Raf_PtU",   "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.01 * h06_Amu_Mbh    / DLookup( "h06_Amu_Mbh",   "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.05 * h07_EJT_EDK    / DLookup( "h07_EJT_EDK",   "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.08 * h08_Blg_Cbr    / DLookup( "h08_Blg_Cbr",   "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.05 * h09_UFE        / DLookup( "h09_UFE",       "q_Endeks", "g_Ay = #8/1/2023#" ) +
        0.15 * h10_ME_BYS     / DLookup( "h10_ME_BYS",    "q_Endeks", "g_Ay = #8/1/2023#" ),
        6
    ) AS FFK_AK,

    Round( h05_Raf_PtU / DLookup( "h05_Raf_PtU", "q_Endeks", "g_Ay = #8/1/2023#" ), 5 ) AS YKT_AK,
    Round( h10_ME_BYS  / DLookup( "h10_ME_BYS",  "q_Endeks", "g_Ay = #8/1/2023#" ), 5 ) AS BKM_AK,
    Round( h_EUR       / DLookup( "h_EUR",       "q_Endeks", "g_Ay = #8/1/2023#" ), 5 ) AS EUR_AK,
    Round( h_USD       / DLookup( "h_USD",       "q_Endeks", "g_Ay = #8/1/2023#" ), 5 ) AS USD_AK 

FROM 
    q_Endeks