library(tidyverse)

illness <-
  dplyr::tribble(
    ~test,         ~units,             ~day_3,     ~day_4,     ~day_5,     ~day_6,     ~day_7,     ~day_8,     ~day_9,     ~norm_l,     ~norm_u,
    "Viral load",  "copies per mL",    1.2e4,      4.2e3,      1.6e3,      8.3e2,      7.6e2,      5.2e2,      2.5e2,      NA,          NA,
    "WBC",         "x10^9 / L",        5.26,       4.26,       9.92,       10.49,      24.77,      30.26,      19.03,      4,           10,
    "Neutrophils", "x10^9 / L",        4.87,       4.72,       7.92,       18.21,      22.08,      27.17,      16.59,      2,           8,
    "RBC",         "x10^12 / L",       5.72,       5.98,       4.23,       4.83,       4.12,       2.68,       3.32,       4,           5.5,
    "Hb",          "g / L",            153,        135,        126,        115,        75,         87,         95,         120,         160,
    "PLT",         "x10^9 / L",        67.0,       38.6,       27.4,       26.2,       74.1,       36.2,       25.6,       100,         300,
    "ALT",         "U/L",              12835,      12632,      6426.7,     4263.1,     1623.7,     672.6,      512.4,      9,           50,
    "AST",         "U/L",              23672,      21368,      14730,      8691,       2189,       1145,       782.5,      15,          40,
    "TBIL",        "umol/L",           117.2,      143.8,      137.2,      158.1,      127.3,      105.1,      163.2,      0,           18.8,
    "DBIL",        "umol/L",           71.4,       104.6,      94.6,       143.9,      117.8,      83.6,       126.3,      0,           6.8,
    "NH3",         "mmol/L",           115.2,      135.2,      131.0,      176.7,      84.2,       72.4,       91.9,       10,          47,
    "PT",          "s",                24.6,       42.4,       53.7,       54.0,       22.6,       16.8,       29.5,       9.4,         12.5,
    "APTT",        "s",                39.2,       57.2,       65.9,       68.3,       62.4,       61.7,       114.7,      25.1,        36.5,
    "PTA",         "%",                41,         25,         19,         14,         51,         55,         31,         70,          130,
    "DD",          "mg / L",           32.9,       35.1,       24.5,       25.6,       18.7,       24.7,       64.8,       0,           5,
    "FDP",         "ug / mL",          84.7,       92.5,       77.2,       NA,         NA,         157.2,      291.7,      0,           5,
    "Fibrinogen",  "mg / dL",          238.1,      216.8,      135.0,      85.2,       105.7,      NA,         64.3,       200,         400,
    "LDH",         "U/L",              5727.3,     2622.8,     2418.7,     546.3,      NA,         637.2,      NA,         80,          285,
    "HBDH",        NA,                 5971.2,     5826.9,     4826.9,     2871.2,     NA,         1163.6,     NA,         74,          182,
    "CK",          "U/L",              725.0,      792.1,      760.2,      1263.6,     NA,         1294.2,     NA,         38,          174,
    "CKMB",        "U/L",              75,         71,         58,         65,         NA,         68,         NA,         NA,          25,
    "BNP",         "pg / mL",          37,         NA,         73,         NA,         482,        421,        1332,       NA,          100,
    "MYO",         "ng / mL",          636.6,      762.1,      364.6,      9999,       9999,       9999,       9999,       0,           140,
    "TnI",         "ng / mL",          0.026,      0.041,      0.046,      0.164,      0.141,      2.839,      8.937,      0,           0.028,
    "CREA",        "umol / L",         705.6,      683.6,      523.6,      374.0,      259.6,      241.8,      211.4,      59,          104,
    "BUN",         "mmol / L",         20.13,      25.33,      13.33,      7.84,       4.23,       3.92,       3.41,       1.7,         8.3,
    "AMY",         "U / L",            NA,         232.8,      394.6,      513.7,      NA,         642.9,      538.9,      0,           115,
    "LPS",         "U / L",            NA,         227.6,      526.9,      487.9,      NA,         437.8,      414.5,      5.6,         51.3,
    "K",           "mmol / L",         4.19,       4.64,       4.34,       4.83,       4.53,       4.37,       5.74,       3.50,        5.30,
    "Na",          "mmol / L",         136.3,      135.7,      142.1,      140.8,      144.8,      143.6,      144.2,      137,         147,
    "Cl",          "mmol / L",         91.2,       92.9,       96.6,       99.2,       102.1,      99.5,       105.2,      99,          110,
    "Ca",          "mmol / L",         1.74,       1.64,       2.25,       2.35,       2.16,       2.03,       2.29,       2.20,        2.55,
    "P",           "mmol / L",         2.96,       3.23,       1.47,       1.15,       0.97,       1.57,       1.63,       0.81,        1.45,
    "Lac",         "mmol / L",         2.32,       2.42,       2.19,       2.66,       NA,         6.15,       5.46,       1.33,        1.78,
    "CRP",         "mg / L",           43.6,       38.6,       28.6,       21.5,       NA,         4.3,        6.4,        0,           5,
    "PCT",         "ng / mL",          0.57,       NA,         1.35,       2.26,       1.79,       3.48,       5.92,       NA,          0.05,
    "IL-6",        NA,                 NA,         NA,         165.9,      58.3,       74.6,       737.2,      NA,         NA,          7,
    "CD3+CD4+",    "T cells per uL",   NA,         174,        153,        184,        243,        370,        252,        706,         1125,
    "CD3+CD8+",    "T cells per uL",   NA,         142,        135,        126,        132,        511,        410,        323,         836
  )
